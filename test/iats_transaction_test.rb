# encoding: utf-8

require_relative '../iats/iats_transaction'
require_relative '../iats/credit_card'
require_relative '../iats/response'
require 'test/unit'
require 'mocha/setup'
require 'date'

class IatsTransactionTest < Test::Unit::TestCase 
  def setup

    @gateway = IatsTransactionGateway.new(region: 'uk',
                                          login: 'TEST88',
                                          password: 'TEST88')
    @card = CreditCard.new(
      month: '03',
      year: Time.now.year + 1,
      brand: 'visa',
      number: '4111111111111111'
    )
    @beginDate = DateTime.now.iso8601
    @endDate = (DateTime.now + 5).iso8601
    
   @options = {
		:ip => '123.123.123.123',
		:email => 'iats@example.com',
		:billing_address => {
		  :name => 'Test UK',
        	  :phone => '555-555-5555',
		  :address1 => 'example address1',
	          :address2 => 'example address2',
	          :city => 'xyz',
	          :state => 'AP',
		  :country => 'FR',
	          :zip => '1312423'
	       },
	       :zip_code => 'ww'
	     }	
	@recurring_options = @options.merge(:comment => 'Test recurring',:recurring => true, :beginDate => @beginDate,:endDate => @endDate,:scheduleType => 'Weekly',:scheduleDate => '1~7')
  end

  def test_expiration_validation
    @card.year = 2010
    assert_raises(ArgumentError) do
      @gateway.purchase(100, @card, @options)
    end
  end

  def test_zip_require_field
    assert_raises(ArgumentError) do
      @gateway.purchase(100, @card)
    end
  end

  def test_region_and_host
    assert @gateway.current_host ==
      IatsTransactionGateway::UK_HOST
    @gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
    assert @gateway.current_host ==
      IatsTransactionGateway::NA_HOST
  end

  def test_success_purchase
    @gateway.expects(:process_credit_card_v1).returns(Nokogiri::XML(success_purchase_xml))
    @options.update(:zip_code => 234)
    assert response = @gateway.purchase(100, @card, @options)
    assert_instance_of Response, response
    assert_equal ' OK: 678594:Z', response.message
  end

  def test_reject_purchase
    @gateway.expects(:process_credit_card_v1).returns(
      Nokogiri::XML(reject_purchase_xml))
    @options.update(:zip_code => 234)
    assert response = @gateway.purchase(100, @card, @options)
    assert_instance_of Response, response
    assert_equal  IatsTransactionGateway::REJECT_MESSAGES['15'],
                  response.message
  end

  def test_success_refund
    @gateway.expects(:process_credit_card_refund_with_transaction_id_v1).
      returns(Nokogiri::XML(success_refund_xml))
    @options.update(:total => 123)
    assert response = @gateway.refund(100, @options)
    assert_instance_of Response, response
    assert_equal ' OK: 1234', response.message
  end

  def test_reject_refund
    @gateway.expects(:process_credit_card_refund_with_transaction_id_v1).
      returns(Nokogiri::XML(reject_refund_xml))
    @options.update(:total => 123)
    assert response = @gateway.refund(100, @options)
    assert_instance_of Response, response
    assert_equal IatsTransactionGateway::REJECT_MESSAGES['39'],
      response.message
  end

  def test_recurring
    @gateway.expects(:create_update_ACHEFT_customercode_v1).returns(Nokogiri::XML(create_xml_recurring))
    assert response = @gateway.recurring(3, @card, @recurring_options)
    assert_instance_of Response, response
    assert_equal 'OK', response.message
  end

  def test_update_recurring
    @gateway.expects(:create_update_ACHEFT_customercode_v1).returns(Nokogiri::XML(create_xml_recurring))
    assert response = @gateway.recurring(3, @card, @recurring_options)
    assert_instance_of Response, response
    assert_equal 'OK', response.message
  end
 
  def test_delete_customercode
    @gateway.expects(:get_delete_customercode_details_v1).returns(Nokogiri::XML(delete_customercode_xml))
    assert response = @gateway.get_customercode_details(@recurring_options)
    assert_instance_of Response, response
    response.params['customer_code'] =~ /"[A-Z]\d+" is deleted/
  end

  def test_process_customercode
	gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
	gateway.expects(:get_delete_customercode_details_v1).returns(Nokogiri::XML(process_customercode_xml))
	@recurring_options[:billing_address].update(:country => 'US')
	@recurring_options.update(:customerCode => 'A10408491')
    assert response = gateway.process_ach_customercode_NA(1, @recurring_options)
    assert_instance_of Response, response
    assert_equal ' OK: 555555', response.message
  end
  
 def test_get_customercode_details
	gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
	gateway.expects(:get_delete_customercode_details_v1).returns(Nokogiri::XML(customercode_details_xml))
	@recurring_options.update(:customerCode => 'A10367264') 
    response = gateway.get_customercode_details(@recurring_options)
    assert  response.success?
    assert_equal response.params[:customer_code], 'A10367264'
 end
 
 
  def success_purchase_xml
    <<-XML
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <soap:Body>
    <ProcessCreditCardV1Response xmlns="https://www.iatspayments.com/NetGate/">
      <ProcessCreditCardV1Result>
        <IATSRESPONSE xmlns="">
          <STATUS>Success</STATUS>
          <ERRORS/>
          <PROCESSRESULT>
            <AUTHORIZATIONRESULT> OK: 678594:Z
</AUTHORIZATIONRESULT>
            <CUSTOMERCODE/>
            <TRANSACTIONID>A12CFF0
</TRANSACTIONID>
          </PROCESSRESULT>
        </IATSRESPONSE>
      </ProcessCreditCardV1Result>
    </ProcessCreditCardV1Response>
  </soap:Body>
</soap:Envelope>
    XML
  end

  def reject_purchase_xml
    <<-XML
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <soap:Body>
    <ProcessCreditCardV1Response xmlns="https://www.iatspayments.com/NetGate/">
      <ProcessCreditCardV1Result>
        <IATSRESPONSE xmlns="">
          <STATUS>Success</STATUS>
          <ERRORS/>
          <PROCESSRESULT>
            <AUTHORIZATIONRESULT> REJECT: 15
</AUTHORIZATIONRESULT>
            <CUSTOMERCODE/>
            <TRANSACTIONID>A12CFF2
</TRANSACTIONID>
          </PROCESSRESULT>
        </IATSRESPONSE>
      </ProcessCreditCardV1Result>
    </ProcessCreditCardV1Response>
  </soap:Body>
</soap:Envelope>
    XML
  end

  def success_refund_xml
    <<-XML
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <soap:Body>
    <ProcessCreditCardRefundWithTransactionIdV1Response xmlns="https://www.iatspayments.com/NetGate/">
      <ProcessCreditCardRefundWithTransactionIdV1Result>
        <IATSRESPONSE xmlns="">
          <STATUS>Success</STATUS>
          <ERRORS/>
          <PROCESSRESULT>
            <AUTHORIZATIONRESULT> OK: 1234
</AUTHORIZATIONRESULT>
            <CUSTOMERCODE/>
            <TRANSACTIONID/>
          </PROCESSRESULT>
        </IATSRESPONSE>
      </ProcessCreditCardRefundWithTransactionIdV1Result>
    </ProcessCreditCardRefundWithTransactionIdV1Response>
  </soap:Body>
</soap:Envelope>
    XML
  end

  def reject_refund_xml
    <<-XML
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <soap:Body>
    <ProcessCreditCardRefundWithTransactionIdV1Response xmlns="https://www.iatspayments.com/NetGate/">
      <ProcessCreditCardRefundWithTransactionIdV1Result>
        <IATSRESPONSE xmlns="">
          <STATUS>Success</STATUS>
          <ERRORS/>
          <PROCESSRESULT>
            <AUTHORIZATIONRESULT> REJECT: 39
</AUTHORIZATIONRESULT>
            <CUSTOMERCODE/>
            <TRANSACTIONID/>
          </PROCESSRESULT>
        </IATSRESPONSE>
      </ProcessCreditCardRefundWithTransactionIdV1Result>
    </ProcessCreditCardRefundWithTransactionIdV1Response>
  </soap:Body>
</soap:Envelope>
    XML
  end

	def create_xml_recurring
	<<-XML
	<?xml version="1.0" encoding="utf-8"?>
	<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"> 
	 <soap:Body>    
		<CreateACHEFTCustomerCodeV1Response xmlns="https://www.iatspayments.com/NetGate/">      
			<CreateACHEFTCustomerCodeV1Result>        
			 <IATSRESPONSE xmlns="\"> 
			   <STATUS>Success</STATUS>          
			   <ERRORS/>
			   <PROCESSRESULT>            
			<AUTHORIZATIONRESULT>OK</AUTHORIZATIONRESULT>
			      <CUSTOMERCODE>A10367264</CUSTOMERCODE>          
			  </PROCESSRESULT>
			</IATSRESPONSE> 
		       </CreateACHEFTCustomerCodeV1Result>
		     </CreateACHEFTCustomerCodeV1Response>
		</soap:Body>
	</soap:Envelope>
	XML
	end

	def customercode_details_xml
	<<-XML
	<?xml version="1.0" encoding="utf-8"?>
	<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
		<soap:Body>
		  <GetCustomerCodeDetailV1Response xmlns="https://www.iatspayments.com/NetGate/">
		    <GetCustomerCodeDetailV1Result>
		      <IATSRESPONSE xmlns="">
		        <STATUS>Success</STATUS>
		        <ERRORS/>
		        <CUSTOMERS>
		          <CST>
		            <CSTC>A10367264</CSTC>
		            <FLN>Sample user</FLN>
		            <CO/>
		            <ADD>address</ADD>
		            <CTY>xyz</CTY>
		            <ST>AP</ST>
		            <ZC>1312423</ZC>
		            <PH/>
		            <MB/>
		            <FX/>
		            <EM>iats@example.com</EM>
		            <CM/>
		            <RCR status="ON">
		              <AMT>3.00</AMT>
		              <BD>01/20/2014</BD>
		              <ED>01/25/2014</ED>
		              <SCHTYP>Weekly</SCHTYP>
		              <SCHD>1</SCHD>
		            </RCR>
		            <AC1 type="ACH">
		              <ACH>
		                <CSTN>Sample user</CSTN>
		                <ACN>3716***1638</ACN>
		                <ACTYP>SAVING</ACTYP>
		              </ACH>
		            </AC1>
		          </CST>
		        </CUSTOMERS>
		      </IATSRESPONSE>
		    </GetCustomerCodeDetailV1Result>
		  </GetCustomerCodeDetailV1Response>
		</soap:Body>
	</soap:Envelope>
	XML
	end


	def delete_customercode_xml
	<<-XML
	<?xml version="1.0" encoding="utf-8"?>
	<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
		<soap:Body>
		  <DeleteCustomerCodeV1Response xmlns="https://www.iatspayments.com/NetGate/">
		    <DeleteCustomerCodeV1Result>
		      <IATSRESPONSE xmlns="">
		        <STATUS>Success</STATUS>
		        <ERRORS/>
		        <PROCESSRESULT>
		          <AUTHORIZATIONRESULT>OK</AUTHORIZATIONRESULT>
		          <CUSTOMERCODE>"A10367264" is deleted</CUSTOMERCODE>
		        </PROCESSRESULT>
		      </IATSRESPONSE>
		    </DeleteCustomerCodeV1Result>
		  </DeleteCustomerCodeV1Response>
		</soap:Body>
	</soap:Envelope>
	XML
	end
	
	def process_customercode_xml
	<<-XML
		<?xml version="1.0" encoding="utf-8"?>
		<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
		  <soap:Body>
			<ProcessACHEFTWithCustomerCodeV1Response xmlns="https://www.iatspayments.com/NetGate/">
			  <ProcessACHEFTWithCustomerCodeV1Result>
				<IATSRESPONSE xmlns="">
				  <STATUS>Success</STATUS>
				  <ERRORS/>
				  <PROCESSRESULT>
					<AUTHORIZATIONRESULT> OK: 555555</AUTHORIZATIONRESULT>
					<CUSTOMERCODE>A10408491</CUSTOMERCODE>
					<TRANSACTIONID>A6A5AD2D</TRANSACTIONID>
				  </PROCESSRESULT>
				</IATSRESPONSE>
			  </ProcessACHEFTWithCustomerCodeV1Result>
			</ProcessACHEFTWithCustomerCodeV1Response>
		  </soap:Body>
		</soap:Envelope>
	XML
	end
end
