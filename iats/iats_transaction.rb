# encoding: utf-8
require 'net/http'
require 'nokogiri'
require 'active_support/core_ext/class/attribute'
require_relative 'response'

class IatsTransactionGateway

     class_attribute :supported_countries
     class_attribute :supported_cardtypes
     class_attribute :homepage_url
     class_attribute :display_name
     class_attribute :test_url, :live_url
     class_attribute :default_currency

   # listing of reject codes
      # https://www.iatspayments.com/english/help/rejects.html
      #

      # The card types supported by the payment gateway
      self.supported_cardtypes = [:visa, :master, :american_express, :discover, :maestro]
      self.supported_countries = %w(  US UK AU CA FI DK FR DE IT HK GR IE TR
                                      CH SE ES SG PT NO NL JP NZ AT BE LU)
      self.default_currency = 'USD'
      # The homepage URL of the gateway
      self.homepage_url = 'http://iatspayments.com'
      # The name of the gateway
      self.display_name = 'IATS'
      
      NA_COUNTRIES = %w( US CA)
      UK_COUNTRIES = %w(UK AU FI DK FR DE IT HK GR IE TR CH SE ES SG PT NO NL JP NZ AT BE LU)
      
      SCHEDULE_TYPE = %w(WEEKLY MONTHLY QUARTERLY ANNUALLY)

      ACCOUNT_TYPE = %w(CHECKING SAVING)

      UK_HOST = 'www.uk.iatspayments.com'
      NA_HOST = 'www.iatspayments.com'

      PROCESS_URL = '/NetGate/ProcessLink.asmx'
      CUSTOMER_URL = '/NetGate/CustomerLink.asmx'

      REJECT_MESSAGES = {
        '1' => 'Agent code has not been set up on the authorization system. Please call iATS at 1-888-955-5455.',
        '2' => 'Unable to process transaction. Verify and re-enter credit card information.',
        '3' => 'Invalid Customer Code.',
        '4' => 'Incorrect expiration date.',
        '5' => 'Invalid transaction. Verify and re-enter credit card information.',
        '6' => 'Please have cardholder call the number on the back of the card.',
        '7' => 'Lost or stolen card.',
        '8' => 'Invalid card status.',
        '9' => 'Restricted card status. Usually on corporate cards restricted to specific sales.',
        '10' => 'Error. Please verify and re-enter credit card information.',
        '11' => 'General decline code. Please have client call the number on the back of credit card',
        '12' => 'Incorrect CVV2 or Expiry date',
        '14' => 'The card is over the limit.',
        '15' => 'General decline code. Please have client call the number on the back of credit card',
        '16' => 'Invalid charge card number. Verify and re-enter credit card information.',
        '17' => 'Unable to authorize transaction. Authorizer needs more information for approval.',
        '18' => 'Card not supported by institution.',
        '19' => 'Incorrect CVV2 security code',
        '22' => 'Bank timeout. Bank lines may be down or busy. Re-try transaction later.',
        '23' => 'System error. Re-try transaction later.',
        '24' => 'Charge card expired.',
        '25' => 'Capture card. Reported lost or stolen.',
        '26' => 'Invalid transaction, invalid expiry date. Please confirm and retry transaction.',
        '27' => 'Please have cardholder call the number on the back of the card.',
        '32' => 'Invalid charge card number.',
        '39' => 'Contact IATS 1-888-955-5455.',
        '40' => 'Invalid card number. Card not supported by IATS.',
        '41' => 'Invalid Expiry date.',
        '42' => 'CVV2 required.',
        '43' => 'Incorrect AVS.',
        '45' => 'Credit card name blocked. Call iATS at 1-888-955-5455.',
        '46' => 'Card tumbling. Call iATS at 1-888-955-5455.',
        '47' => 'Name tumbling. Call iATS at 1-888-955-5455.',
        '48' => 'IP blocked. Call iATS at 1-888-955-5455.',
        '49' => 'Velocity 1 – IP block. Call iATS at 1-888-955-5455.',
        '50' => 'Velocity 2 – IP block. Call iATS at 1-888-955-5455.',
        '51' => 'Velocity 3 – IP block. Call iATS at 1-888-955-5455.',
        '52' => 'Credit card BIN country blocked. Call iATS at 1-888-955-5455.',
        '100' => 'DO NOT REPROCESS. Call iATS at 1-888-955-5455.',
        'Timeout' => 'The system has not responded in the time allotted. Call iATS at 1-888-955-5455.'}


      def initialize(options = {})
        #requires!(options, :login, :password, :region)
        @region = options[:region]
        @login = options[:login]
        @password = options[:password]
	@is_process_url = false
        
      end

      # in options require zip_code
      # optional data in options :customer_ip_address,
      # :cvv2, :first_name, :last_name, :address, :city, :state
      def purchase(money, creditcard, options = {})
        if creditcard.expired?
          mess = "Credit Card is expired #{creditcard.inspect}"
          raise ArgumentError.new(mess)
        end
        if options[:zip_code].nil?
          mess = "Require zip code in options #{options.inspect}"
          raise ArgumentError.new(mess)
        end
        hash = {
          total: money,
          mop: creditcard.brand,
          zip_code: options[:zip_code],
          credit_card_num: creditcard.number,
          credit_card_expiry: "#{creditcard.month}/#{creditcard.year}"
        }
        if !options[:cvv2].nil?
			hash[:cvv2] = options[:cvv2]
		end
		@is_process_url = true
		select_region(options)
        res = process_credit_card_v1(hash)
        parse_data(res)
      end

      def authorize(money, creditcard, options = {})
        raise NotImplementedError.new
      end

      def capture(money, identification, options = {})
        raise NotImplementedError.new
      end

      def void(identification, options = {})
        raise NotImplementedError.new
      end

      # options require money with symbol -
      # identification is transaction_id
      # optional data in options :customer_ip_address,
      # :invoice_num,
      def refund(identification, options = {})
		options[:total] = options[:total].to_f > 0 ? 0.0 - options[:total].to_f : options[:total].to_f
		@is_process_url = true
		hash = {
		  total: options[:total],
		  transaction_id: identification
		}
		select_region(options)
		res = process_credit_card_refund_with_transaction_id_v1(hash)
		parse_data(res)
      end

      def credit(money, identification, options = {})
        raise NotImplementedError.new
      end

      def select_region(options = {})
		address = options[:billing_address] || options[:address]
		if @region.nil?
		 unless address[:country].nil?
		   if NA_COUNTRIES.include?(address[:country])
			@region = 'na'
		   elsif UK_COUNTRIES.include?(address[:country])
			@region = 'uk'
		   end
		end
	   end
      end

      # ACH Methods 	

      #Create recurring
     def recurring(money, creditcard, options = {})
		hash = {}
		method = ''
		hash[:amount] = money
		hash[:creditCardCustomerName] = options[:creditCardCustomerName] unless options[:creditCardCustomerName].nil?
		hash[:creditCardNum] = creditcard.number unless creditcard.nil?
		hash[:creditCardExpiry] = "#{creditcard.month}/#{creditcard.year}" unless creditcard.nil?
		hash[:mop] = creditcard.brand unless creditcard.nil?
		select_region(options)
		building_hash(hash, options)
		@is_process_url = false
		if !options[:accountNum].nil? && @region == 'uk'
			  method = 'DirectDebitCreateACHEFTCustomerCodeV1'
		elsif !options[:accountNum].nil?
		  method = 'CreateACHEFTCustomerCodeV1'	
		elsif !(creditcard.nil? && creditcard.number.nil?)
		  method = 'CreateCreditCardCustomerCodeV1'
		else
		  mess = "Any one of the input(ACH or Credit card) is required"
		  raise ArgumentError.new(mess)
		end
		 res = create_update_ACHEFT_customercode_v1(hash, method)
		 parse_ACH_data(res)
     end


     # Update recurring
    def update_recurring(money, creditcard, options = {})
		hash = {}
		method = ''
		hash[:amount] = money
		hash[:creditCardCustomerName] = options[:creditCardCustomerName] unless options[:creditCardCustomerName].nil?
		hash[:creditCardNum] = creditcard.number unless creditcard.nil?
		hash[:creditCardExpiry] = "#{creditcard.month}/#{creditcard.year}" unless creditcard.nil? || creditcard.nil?
		hash[:mop] = creditcard.brand unless creditcard.nil?
		select_region(options)
		building_hash(hash, options)
		if options[:customerCode].nil?
		  mess = "Provide the customer code(Token)"
		  raise ArgumentError.new(mess)
		end
		@is_process_url = false
		if !(options[:accountNum].nil? && options[:accountType].nil?) && @region == 'uk'
			  method = 'DirectDebitUpdateACHEFTCustomerCodeV1'
		elsif !(options[:accountNum].nil? && options[:accountType].nil?)
		  method = 'UpdateACHEFTCustomerCodeV1'
		elsif !(creditcard.nil? && creditcard.number.nil?)
		  method = 'UpdateCreditCardCustomerCodeV1'
		else
		  mess = "Any one of the input is required"
		  raise ArgumentError.new(mess)
		end

		res = create_update_ACHEFT_customercode_v1(hash, method)
        parse_ACH_data(res)
    end

    # Delete Customercode
    def delete_customercode(options = {})
		hash = {}
		hash[:customerIPAddress] = options[:customerIPAddress]
		hash[:customerCode] = options[:customerCode]
		method = 'DeleteCustomerCodeV1'
		@is_process_url = false
		res = get_delete_customercode_details_v1(hash, method)
		parse_ACH_data(res)
    end
    
     # Get Customercode details
    def get_customercode_details(options = {})
		hash = {}
		hash[:customerIPAddress] = options[:customerIPAddress] unless options[:customerIPAddress].nil?
		hash[:customerCode] = options[:customerCode]
		@is_process_url = false
		method = 'GetCustomerCodeDetailV1'
		res = get_delete_customercode_details_v1(hash, method)
		parse_customercode_details(res)
   end

	def create_customer_code_process_creditcard(amount, creditcard, options= {})
		hash = {}
		address = options[:billing_address]
		hash[:firstName] = address[:first_name]
		hash[:lastName] = address[:last_name]
		hash[:address] = address[:address1] || address[:address2]
		hash[:city] = address[:city]
		hash[:state] = address[:state]
		hash[:zip_code] = address[:zip]
		hash[:total] = amount
		hash[:ccNum] = creditcard.number unless creditcard.nil?
		hash[:ccExp] = "#{creditcard.month}/#{creditcard.year}" unless creditcard.nil? || creditcard.nil?
		@is_process_url = true
		method = 'CreateCustomerCodeAndProcessCreditCardV1'
		data = create_xml_for_process(method, hash)
		res = soap_post(method, data)
		parse_data(res)
	end
	
   def process_ach_customercode_NA(amount, options = {})
	if options[:customerCode].nil?
	  mess = "Please provide customer code"
	  raise ArgumentError.new(mess)
	end
	select_region(options)
	if amount.nil?
	  mess = "Please enter an amount"
	  raise ArgumentError.new(mess)
	end
	
	if @region == 'uk'
	  mess = "Please Contact iATS for UK region"
	  raise ArgumentError.new(mess)
	end

	hash = {}
	hash[:total] = amount
	hash[:customerIPAddress] = options[:customerIPAddress]
	hash[:customerCode] = options[:customerCode]
	@is_process_url = true
	method = 'ProcessACHEFTWithCustomerCodeV1'
	res = get_delete_customercode_details_v1(hash, method)
	parse_data(res)
   end

   # Refund for ach transaction
   def ach_NA_refund(amount, options = {})
	if amount.nil?
	  mess = "Amount is needed for refund"
	  raise ArgumentError.new(mess)
	end

	if options[:transaction_id].nil?
	  mess = "Transaction id is needed for refund the amount"
	  raise ArgumentError.new(mess)
	end

	if @region == 'uk'
	  mess = "Please Contact iATS for UK region"
	  raise ArgumentError.new(mess)
	end

	amount = amount.to_f > 0 ? 0.0 - amount.to_f : amount.to_f
	hash = {}
	hash[:total] = amount
	hash[:customerIPAddress] = options[:customerIPAddress]
	hash[:transaction_id] = options[:transaction_id]
	@is_process_url = true
	method = 'ProcessACHEFTRefundWithTransactionIdV1'
	res = get_delete_customercode_details_v1(hash, method)
	parse_data(res)
   end

   # Refunding Multiple ACHEFT Charges
   def process_multiple_ach(options = {})
	hash = {}
	hash[:batchFile] = options[:batchFile]
	hash[:customerIPAddress] = options[:customerIPAddress]
	if @region == 'uk'
	  mess = "Please Contact iATS for UK region"
	  raise ArgumentError.new(mess)
	end
	@is_process_url = true
	method = 'ProcessACHEFTRefundBatchV1'
	res = get_delete_customercode_details_v1(hash, method)
	parse_data(res)
   end   
	
   # Processing Multiple Credit Cards and Card Transactions

   def process_multiple_CC(options = {})
	if options[:batchFile].nil?
	  mess = "Please provide the Batch file"
	  raise ArgumentError.new(mess)
	end
	hash = {}
	hash[:batchFile] = options[:batchFile]
	hash[:customerIPAddress] = options[:customerIPAddress]
	@is_process_url = true
	method = 'ProcessCreditCardBatchV1'
	res = get_delete_customercode_details_v1(hash, method)
	parse_data(res)
   end   

   #Direct Debit payer validate only for uk
   
    def ach_payer_validate(options = {})
		unless @region == 'uk'
		  mess = "Please contact iATS for validate your Direct debit"
		  raise ArgumentError.new(mess)
		end
		@is_process_url = false
		method = 'DirectDebitACHEFTPayerValidateV1'
		hash = {}
		res = payer_validate(hash, method)
		parse_data(res)
    end  
 
	def process_cc_customercode(amount, options = {})
		if(options[:customerCode].nil?)
			mess = "Please provide your customer code"
			raise ArgumentError.new(mess)
		end
		if(amount.nil?)
			mess = "Please provide the amount"
			raise ArgumentError.new(mess)
		end
		select_region(options)
		hash = {}
		hash[:total] = amount
		hash[:customerCode] = options[:customerCode]
		hash[:customerIPAddress] = options[:customerIPAddress]
		hash[:cvv2] = options[:cvv2]
		hash[:comment] = options[:comment]
		@is_process_url = true
		method = 'ProcessCreditCardWithCustomerCodeV1'
		res = get_delete_customercode_details_v1(hash, method)
		parse_data(res)
	end

	def refund_cc_customercode(amount, options = {})
	
		if(options[:transaction_id].nil?)
			mess = "Please provide your transaction id"
			raise ArgumentError.new(mess)
		end
		if(amount.nil?)
			mess = "Please provide the amount"
			raise ArgumentError.new(mess)
		end

		amount = amount.to_f > 0 ? 0.0 - amount.to_f : amount.to_f
		select_region(options)
		hash = {}
		hash[:total] = amount
		hash[:transaction_id] = options[:transaction_id]
		hash[:customerIPAddress] = options[:customerIPAddress]
		hash[:comment] = options[:comment]
		@is_process_url = true
		method = 'ProcessCreditCardRefundWithTransactionIdV1'
		res = get_delete_customercode_details_v1(hash, method)
		parse_data(res)
	end

	#Requesting Batch Request Results

	def get_batch_process_result_file(options={})
		hash = {}
		hash[:batchId] = options[:batchId]
		hash[:customerIPAddress] = options[:customerIPAddress]
		select_region(options)
		@is_process_url = true
		method = 'GetBatchProcessResultFileV1'
		res = get_delete_customercode_details_v1(hash, method)
		parse_data(res)
	end
	
	def process_ach(amount, options={})
		
		if amount.nil?
			mess = "Please enter valid amount"
			raise ArgumentError.new(mess)
		end
		select_region(options)
		if @region == 'uk'
		  mess = "Please contact iATS fo UK region"
		  raise ArgumentError.new(mess)
		end
		hash = {}
		hash[:total] = amount
		hash[:customerIPAddress] = options[:customerIPAddress]
		hash[:accountNum] = options[:accountNum]
		hash[:accountType] = options[:accountType]
		address = options[:billing_address]
		hash[:firstName] = address[:first_name]
		hash[:lastName] = address[:last_name]
		hash[:address] = address[:address1] || address[:address2]
		hash[:city] = address[:city]
		hash[:state] = address[:state]
		hash[:zipCode] = address[:zip]
		hash[:comment] = options[:comment]
		@is_process_url = true
		method = 'ProcessACHEFTV1'
		data = create_xml_for_process(method, hash)
        soap_post(method, data)
	end
	
	def process_achcharge_batch(options= {})
	if options[:batchFile].nil?
		mess = "Please provide the Batch file"
		raise ArgumentError.new(mess)
	end
	select_region(options)
	if @region == 'uk'
	  mess = "Please contact iATS fo UK region"
	  raise ArgumentError.new(mess)
	end
	hash = {}
	hash[:batchFile] = options[:batchFile]
	hash[:customerIPAddress] = options[:customerIPAddress]
	@is_process_url = true
	method = 'ProcessACHEFTChargeBatchV1'
	res = get_delete_customercode_details_v1(hash, method)
	parse_data(res)
	end
   # Ended ACH methods

      def current_host
        if @region == 'uk'
          UK_HOST
        else
          NA_HOST
        end
      end

      private

      def parse_data(res)
        success = (res.xpath('//STATUS').text.include?('Success') &&
          res.xpath('//AUTHORIZATIONRESULT').text.include?('OK:'))
        message = res.xpath('//AUTHORIZATIONRESULT').text.chomp
        status_code = message
        if !success
          message = REJECT_MESSAGES[message.gsub('REJECT:', '').gsub(' ', '')]
        end
        transaction_id = res.xpath('//TRANSACTIONID').text.chomp
        customer_code = res.xpath('//CUSTOMERCODE').text.chomp
        settlement_batchdate = res.xpath('SETTLEMENTBATCHDATE').text.chomp
        settlement_date = res.xpath('SETTLEMENTDATE').text.chomp
		batch_id = res.xpath('//BATCHID').text.chomp
        Response.new(success, message,
                     { transaction_id: transaction_id,
					   customer_code: customer_code,
                       status_code: status_code,
                       batch_id: batch_id,
                       settlement_batchdate: settlement_batchdate,
                       settlement_date: settlement_date,
                       xml: res.to_xml
                      })
      end

      # ProcessCrediCardV1
      def process_credit_card_v1(hash)
        method = 'ProcessCreditCardV1'
        data = create_xml_for_process(method, hash)
        soap_post(method, data)
      end

      # ProcessCreditCardRefundWithTransactionIdV1
      def process_credit_card_refund_with_transaction_id_v1(hash)
        data = create_xml_for_refund(hash)
        soap_post('ProcessCreditCardRefundWithTransactionIdV1', data)
      end

      def create_update_ACHEFT_customercode_v1(hash, method)
		data = create_xml_for_ACHEFT(hash, method)
		soap_post(method, data)
      end

      def get_delete_customercode_details_v1(hash, method)
		data = create_xml_customercode(hash, method)
		soap_post(method, data)
      end

      def payer_validate(hash, method)
		data = create_xml_payer_validate(hash, method)
		soap_post(method, data)
      end

      # XML creation for create and update recurring
      def create_xml_for_ACHEFT(hash, method)
        xml_start(method) do |xml|
        xml.agentCode @login
		xml.password @password
		xml.customerIPAddress hash[:ip] unless hash[:ip].nil?
		xml.customerCode hash[:customerCode] unless hash[:customerCode].nil?
		xml.firstName hash[:firstName]
		xml.lastName hash[:lastName]
		xml.companyName hash[:companyName] unless hash[:companyName].nil?
		xml.address hash[:address]
		xml.city hash[:city]
		xml.state hash[:state]
		xml.zipCode hash[:zipCode]
		xml.phone hash[:phone]
		xml.fax hash[:fax]
		xml.email hash[:email]
		xml.comment hash[:comment]
		xml.recurring hash[:recurring]
		xml.amount hash[:amount]
		xml.beginDate hash[:beginDate]
		xml.endDate hash[:endDate]
		xml.scheduleType hash[:scheduleType]
		xml.scheduleDate hash[:scheduleDate]
		xml.accountNum hash[:accountNum] unless hash[:accountNum].nil?
		xml.accountType hash[:accountType] unless hash[:accountType].nil?
		xml.creditCardCustomerName hash[:creditCardCustomerName] unless hash[:creditCardCustomerName].nil?
		xml.creditCardNum hash[:creditCardNum] unless hash[:creditCardNum].nil?
		xml.creditCardExpiry hash[:creditCardExpiry] unless hash[:creditCardExpiry].nil?
		xml.mop hash[:mop] unless hash[:mop].nil?
        end.to_xml
     end
	
     #XML creation for Delete, refund and get the customer code details
     def create_xml_customercode(hash, method)
		xml_start(method) do |xml|
		xml.agentCode @login
		xml.password @password
		xml.customerIPAddress hash[:customerIPAddress] unless hash[:customerIPAddress].nil?
		xml.customerCode hash[:customerCode] unless hash[:customerCode].nil?
		xml.transactionId hash[:transaction_id] unless hash[:transaction_id].nil?
		xml.invoiceNum hash[:invoiceNum] unless hash[:invoiceNum].nil?
		xml.total hash[:total] unless hash[:total].nil?
		xml.cvv2 hash[:cvv2] unless hash[:cvv2].nil?
		xml.comment hash[:comment] unless hash[:comment].nil?
		xml.batchFile hash[:batchFile] unless hash[:batchFile].nil?
		xml.batchId hash[:batchId] unless hash[:batchId].nil?
		end.to_xml
     end

     # Setting hash parameters from Options
    def building_hash(hash, options = {})
		address = options[:billing_address]
		hash[:firstName] = address[:first_name]
		hash[:lastName] = address[:last_name]
		hash[:customerCode] = options[:customerCode] unless options[:customerCode].nil?
		hash[:companyName] = options[:companyName] unless options[:companyName].nil?
		hash[:address] = address[:address1] || address[:address2]
		hash[:city] = address[:city]
		hash[:state] = address[:state]
		hash[:zipCode] = address[:zip]
		hash[:phone] = options[:phone]
		hash[:fax] = options[:fax]
		hash[:email] = options[:email]
		hash[:comment] = options[:comment]
		hash[:recurring] = options[:recurring]
		hash[:beginDate] = options[:beginDate]
		hash[:endDate] = options[:endDate]	
		hash[:scheduleType] = options[:scheduleType]
		hash[:accountNum] = options[:accountNum]
		hash[:scheduleDate] = options[:scheduleDate] 
		hash[:accountType] = options[:accountType]
    end

     #Setting the values into hash for Validate Payer info
    def building_hash_validate_payer(hash, options = {})
		address = options[:billing_address]
		hash[:firstName] = address[:first_name]
		hash[:lastName] = address[:last_name]
		hash[:companyName] = options[:companyName] unless options[:companyName].nil?
		hash[:address] = address[:address1] || address[:address2]
		hash[:city] = address[:city]
		hash[:state] = address[:state] unless options[:state].nil?
		hash[:country] = address[:country] unless options[:country].nil?
		hash[:zipCode] = address[:zip]
		hash[:accountCustomerName] = options[:accountCustomerName]
		hash[:email] = options[:email] 	
		hash[:beginDate] = options[:beginDate]
		hash[:endDate] = options[:endDate]	
		hash[:accountNum] = options[:accountNum]
		hash[:ACHEFTReferenceNum] = options[:ACHEFTReferenceNum] unless options[:ACHEFTReferenceNum].nil?
    end

    def create_xml_payer_validate(hash, method)
		xml_start(method) do |xml|
        xml.agentCode @login
		xml.password @password
		xml.customerIPAddress hash[:ip] unless hash[:ip].nil?
		xml.firstName hash[:firstName]
		xml.lastName hash[:lastName]
		xml.companyName hash[:companyName] unless hash[:companyName].nil?
		xml.address hash[:address]
		xml.city hash[:city]
		xml.state hash[:state]
		xml.zipCode hash[:zipCode]
		xml.country hash[:country] unless hash[:country].nil?
		xml.email hash[:email]
		xml.beginDate hash[:beginDate]
		xml.endDate hash[:endDate]
		xml.accountNum hash[:accountNum] unless hash[:accountNum].nil?
		xml.ACHEFTReferenceNum hash[:ACHEFTReferenceNum] unless hash[:ACHEFTReferenceNum].nil?
		xml.accountCustomerName hash[:accountCustomerName]
        end.to_xml
    end

    def parse_ACH_data(res)
        success = (res.xpath('//STATUS').text.include?('Success') &&
        res.xpath('//AUTHORIZATIONRESULT').text.include?('OK'))
        message = res.xpath('//AUTHORIZATIONRESULT').text.chomp
		bank_error = res.xpath('//BANKERROR').text.chomp
		customer_code = res.xpath('//CUSTOMERCODE').text.chomp
        status_code = message
        if !success
          message = REJECT_MESSAGES[message.gsub('REJECT:', '').gsub(' ', '')]
        end
        Response.new(success, message,
                     { customer_code: customer_code,
                       status_code: status_code,
					   bank_error: bank_error,
                       xml: res.to_xml
                      })
     end

    def parse_customercode_details(res)
        success = (res.xpath('//STATUS').text.include?('Success'))     
        if !success
          message = REJECT_MESSAGES[message.gsub('REJECT:', '').gsub(' ', '')]
        end
        customer_code = res.xpath('//CSTC').text.chomp
        Response.new(success, message,
                     { customer_code: customer_code,
                       xml: res.to_xml
                      })
     end


      def soap_options
        {
          'xmlns:xsi' => 'http://www.w3.org/2001/XMLSchema-instance',
          'xmlns:xsd' => 'http://www.w3.org/2001/XMLSchema',
          'xmlns:soap12' => 'http://www.w3.org/2003/05/soap-envelope'
        }
      end

      def create_xml_for_refund(hash)
        xml_start('ProcessCreditCardRefundWithTransactionIdV1') do |xml|
          xml.agentCode @login
          xml.password @password
          xml.customerIPAddress hash[:customer_ip_address]
          xml.transactionId hash[:transaction_id]
          xml.total hash[:total]
        end.to_xml
      end

      def create_xml_for_process(method, hash)
        xml_start(method) do |xml|
          xml.agentCode @login
          xml.password @password
          xml.customerIPAddress hash[:customer_ip_address]
          xml.invoiceNum hash[:invoice_num]
          xml.creditCardNum hash[:credit_card_num] unless hash[:credit_card_num].nil?
          xml.creditCardExpiry hash[:credit_card_expiry] unless hash[:credit_card_expiry].nil?
          xml.ccNum hash[:ccNum] unless hash[:ccNum].nil?
          xml.ccExp hash[:ccExp] unless hash[:ccExp].nil?
          xml.cvv2 hash[:cvv2] unless hash[:cvv2].nil?
          xml.mop hash[:mop] unless hash[:mop].nil?
          xml.accountNum hash[:account_num] unless hash[:account_num].nil?
          xml.accountType hash[:account_type] unless hash[:account_type].nil?
          xml.firstName hash[:first_name]
          xml.lastName hash[:last_name]
          xml.address hash[:address]
          xml.city hash[:city]
          xml.state hash[:state]
          xml.zipCode hash[:zip_code]
          xml.total hash[:total]
        end.to_xml
      end

      # root, headers and process name
      def xml_start(process_card, &block)
        Nokogiri::XML::Builder.new(encoding: 'utf-8') do |xml|
          xml.__send__('soap12:Envelope', soap_options) do
            xml.__send__('soap12:Body') do
              xml.__send__(
                process_card,
                xmlns: 'https://www.iatspayments.com/NetGate/',
                &block)
            end
          end
        end
      end

      def soap_post(method, data)
		site = ""
		if @is_process_url
		  site = current_host + PROCESS_URL
		else
		  site = current_host + CUSTOMER_URL
		end
        req = Net::HTTP::Post.new('https://' + site)
        req.body = data
        req.content_type = 'application/soap+xml; charset=utf-8'
        res = Net::HTTP.start(current_host,
                              443,
                              use_ssl: true) do |http|
          http.request(req)
        end
        Nokogiri::XML(res.body)
      end

end

