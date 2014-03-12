# encoding: utf-8
require_relative '../iats/iats_transaction'
require_relative '../iats/credit_card'
require_relative '../iats/response'
require 'test/unit'
require 'mocha/setup'
require 'date'
require 'base64'

class RemoteIatsTransactionTest < Test::Unit::TestCase
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
		  :first_name => 'Sreekanth',
		  :last_name => 'Gorantla',
        	  :phone => '555-555-5555',
		  :address1 => 'Uppal',
	          :address2 => 'Hyderabad',
	          :city => 'Hyd',
	          :state => 'AP',
		  :country => 'US',
	          :zip => '1312423'
	       },
	       :zip_code => 'ww'
	     }	

@recurring_options = @options.merge(:comment => 'Test recurring',:recurring => false, :beginDate => @beginDate,:endDate => @endDate,:scheduleType => 'Weekly',:scheduleDate => '1~7')

  end

  def test_process_cc_ok
    %w(1 3 6 7 8 9 10).each do |total|
      result = @gateway.purchase(total, @card, @options)
      assert result.message =~ /OK: 678594/
      assert result.success?
      assert result.params[:transaction_id] =~ /\d/
    end
  end

  def test_process_cc_rej
    [2, 4, 5].each do |total|
      result = @gateway.purchase(total, @card, @options)
      assert !result.success?
      assert result.message  == 'General decline code. Please have client call the number on the back of credit card'
    end
  end

  def test_process_cc
    result = @gateway.purchase(3, @card, @options)
    assert result.message =~ /OK: 678594/
    assert result.success?
    assert result.params[:transaction_id] =~ /\d/
  end

  def test_process_cc_16
    result = @gateway.purchase(16, @card, @options)
    assert !result.success?
    assert result.message  == 'Unable to process transaction. Verify and re-enter credit card information.'
  end

  def test_process_cc_17
    result = @gateway.purchase(17, @card, @options)
    assert !result.success?
    assert result.message  == 'Bank timeout. Bank lines may be down or busy. Re-try transaction later.'
    assert result.params[:status_code] =~ /REJECT: 22/
  end

  def test_process_cc_100
    result = @gateway.purchase(100, @card, @options)
    assert result.params[:status_code] =~ /REJECT: 15/
    assert !result.success?
    assert result.message  == 'General decline code. Please have client call the number on the back of credit card'
  end

  def test_refund
    @options.update(:total => '-100')
    result = @gateway.refund(1, @options)
    assert result.params[:status_code] =~ /REJECT: 39/
    assert !result.success?
    assert result.message  == 'Contact IATS 1-888-955-5455.'
  end

  def test_validate_cvv2_1234
     @options.update(:cvv2 => 1234)
     result = @gateway.purchase(15, @card, @options)
     assert result.params[:status_code] =~ /OK: 678594/
     assert result.success?
     assert result.params[:transaction_id] =~ /\d/
  end
 
  def test_validate_cvv2
     result = @gateway.purchase(15, @card, @options)
     assert result.params[:status_code] =~ /REJECT: 19/
     assert !result.success?
     assert result.params[:transaction_id] =~ /\d/
  end

  def test_ACH_NA_recurring
    amount = 3
    @recurring_options.update(:accountNum => '0210000219876543210', :accountType => 'SAVING')
    @card = nil
    gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
    response = gateway.recurring(amount, @card, @recurring_options)
    assert  response.success?
    assert response.params[:customer_code] =~ /\d/
  end
  
  def test_ACH_UK_recurring
    amount = 1
    @recurring_options.update(:accountNum => '00000012345678', :beginDate => (DateTime.now + 12).iso8601, :endDate => (DateTime.now + 17).iso8601)	
    gateway = IatsTransactionGateway.new(region: 'uk',
					 	login: 'UDDD88',
						password: 'UDDD888')
    @card = nil
    response = gateway.recurring(amount, @card, @recurring_options)
    assert  response.success?
    assert response.params[:customer_code] =~ /\d/
  end

  def test_CC_NA_recurring
    amount = 3
    gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
    response = gateway.recurring(amount, @card, @recurring_options)
    assert  response.success?
    assert response.params[:customer_code] =~ /\d/
  end
	
   def test_CC_UK_recurring
    amount = 1
    gateway = IatsTransactionGateway.new(region: 'uk',
					 	login: 'UDDD88',
						 password: 'UDDD888')
    response = gateway.recurring(amount, @card, @recurring_options)
    assert  response.success?
    assert response.params[:customer_code] =~ /\d/
   end


  def test_update_ACH_NA_recurring
    amount = 3
    @recurring_options.update(:accountNum => '0210000219876543210', :accountType => 'SAVING')
    @card = nil
    gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
    create_response = gateway.recurring(amount, @card, @recurring_options)
    customer_code = create_response.params[:customer_code]
    @recurring_options.update(:customerCode => customer_code)
    response = gateway.update_recurring(amount, @card, @recurring_options)	
    assert  response.success?
    assert response.params[:customer_code] =~ /\d/
    assert_equal create_response.params[:customer_code], response.params[:customer_code]
  end
	  
  def test_update_ACH_UK_recurring
    amount = 1
    @card = nil
    @recurring_options.update(:accountNum => '00000012345678', :beginDate => (DateTime.now + 12).iso8601, :endDate => (DateTime.now + 17).iso8601)
    gateway = IatsTransactionGateway.new(region: 'uk',
					 	login: 'UDDD88',
						 password: 'UDDD888')
    create_response = gateway.recurring(amount, @card, @recurring_options)
    customer_code = create_response.params[:customer_code]
    @recurring_options.update(:customerCode => customer_code)
    response = gateway.update_recurring(amount, @card, @recurring_options)
    assert  response.success?
    assert response.params[:customer_code] =~ /\d/
    assert_equal create_response.params[:customer_code], response.params[:customer_code]
  end

  def test_update_CC_NA_recurring
    amount = 3
    gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
    create_response = gateway.recurring(amount, @card, @recurring_options)
    customer_code = create_response.params[:customer_code]
    @recurring_options.update(:customerCode => customer_code)
    response = gateway.update_recurring(amount, @card, @recurring_options)
    assert  response.success?
    assert response.params[:customer_code] =~ /\d/
    assert_equal create_response.params[:customer_code], response.params[:customer_code]
  end

  def test_update_CC_UK_recurring
    amount = 3
    gateway = IatsTransactionGateway.new(region: 'uk',
					 	login: 'UDDD88',
						 password: 'UDDD888')
    create_response = gateway.recurring(amount, @card, @recurring_options)
    customer_code = create_response.params[:customer_code]
    @recurring_options.update(:customerCode => customer_code)
    response = gateway.update_recurring(amount, @card, @recurring_options)	
    assert  response.success?
    assert response.params[:customer_code] =~ /\d/
    assert_equal create_response.params[:customer_code], response.params[:customer_code]
  end

 def test_delete_NA_customercode
    amount = 3
    @card = nil
    @recurring_options.update(:accountNum => '0210000219876543210', :accountType => 'SAVING')
    gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
    create_response = gateway.recurring(amount, @card, @recurring_options)
    @recurring_options.update(:customerCode => create_response.params[:customer_code])
    response = gateway.delete_customercode(@recurring_options)
    assert  response.success? 
    assert response.params[:customer_code] =~ /"[A-Z]\d+" is deleted/
  end
  
  def test_delete_UK_customercode
    amount = 3
    @card = nil
    @recurring_options.update(:accountNum => '00000012345678', :beginDate => (DateTime.now + 12).iso8601, :endDate => (DateTime.now + 17).iso8601)
    gateway = IatsTransactionGateway.new(region: 'uk',
					 	login: 'UDDD88',
    						 password: 'UDDD888')
    create_response = gateway.recurring(amount, @card, @recurring_options)
    @recurring_options.update(:customerCode => create_response.params[:customer_code])
    response = gateway.delete_customercode(@recurring_options)
    assert  response.success? 
    assert response.params[:customer_code] =~ /"[A-Z]\d+" is deleted/
  end 

  def test_get_customercode_details
    amount = 1
    @card = nil
    @gateway = IatsTransactionGateway.new(region: 'uk',
					 	login: 'UDDD88',
						 password: 'UDDD888')
    @recurring_options.update(:accountNum => '00000012345678', :accountType => 'SAVING')
    create_response = @gateway.recurring(amount, @card, @recurring_options)
    @recurring_options.update(:customerCode => create_response.params[:customer_code]) 
    response = @gateway.get_customercode_details(@recurring_options)
    assert  response.success?
    assert_equal create_response.params[:customer_code], response.params[:customer_code] 
  end

  #Should use the region UK
  def test_bank_error
    amount = 1
    @card = nil
    @recurring_options[:billing_address].update(:country => 'UK')
    @recurring_options.update(:accountNum => '12345678', :accountType => 'SAVING', :beginDate => (DateTime.now + 12).iso8601, :endDate => (DateTime.now + 17).iso8601)
    create_response = @gateway.recurring(amount, @card, @recurring_options)
    assert  create_response.success?
    assert_equal create_response.params[:bank_error], 'The client code is not ready to process Direct Debit' 
  end

  def test_ACHEFT_refund
    amount = 1
    @card = nil
    @recurring_options.update(:accountNum => '0210000219876543210', :accountType => 'SAVING')
    gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
    create_response = gateway.recurring(amount, @card, @recurring_options) # Creating recurring for ACH
    assert  create_response.success?
    @recurring_options.update(:customerCode => create_response.params[:customer_code]) 
    res = gateway.process_ach_customercode_NA(amount, @recurring_options) # Processing Customer code
    assert res.message =~ /OK: 555555/
    @recurring_options.update(:transaction_id => res.params[:transaction_id])
    refund_res = gateway.ach_NA_refund(amount, @recurring_options)
  end
  
  def test_process_ach_customercode
	amount = 1
    @card = nil
    @recurring_options[:billing_address].update(:country => 'US')
	@recurring_options.update(:accountNum => '0210000219876543210', :accountType => 'SAVING')
	gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
    create_response = gateway.recurring(amount, @card, @recurring_options) # Creating recurring for ACH
    @recurring_options.update(:customerCode => create_response.params[:customer_code]) 
	res = gateway.process_ach_customercode_NA(amount, @recurring_options) # Processing Customer code
	assert_equal create_response.params[:customer_code], res.params[:customer_code]
	assert res.message =~ /OK: 555555/
	assert res.params[:transaction_id] =~ /\d/
  end
  
  def test_process_cc_customercode
	amount = 1
    @recurring_options[:billing_address].update(:country => 'US')
	gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
    create_response = gateway.recurring(amount, @card, @recurring_options) # Creating recurring for CC
    @recurring_options.update(:customerCode => create_response.params[:customer_code]) 
	res = gateway.process_cc_customercode(amount, @recurring_options) # Processing Customer code for CC
	assert res.message =~ /OK: 678594/
	assert_equal create_response.params[:customer_code], res.params[:customer_code]
	assert res.params[:transaction_id] =~ /\d/
  end
  
  def test_cc_refund
    amount = 1
    card = CreditCard.new(
      month: '03',
      year: Time.now.year + 1,
      brand: 'visa',
      number: '4222222222222220'
    )
    create_response = @gateway.recurring(amount, card, @recurring_options) # Creating recurring for CC
    assert  create_response.success?
    @recurring_options.update(:customerCode => create_response.params[:customer_code]) 
    res = @gateway.process_cc_customercode(amount, @recurring_options) # Processing Customer code
    @recurring_options.update(:transaction_id => res.params[:transaction_id])
    refund_res = @gateway.refund_cc_customercode(amount, @recurring_options)
    assert refund_res.success?
    assert refund_res.message =~ /OK: 678594/
    assert refund_res.params[:transaction_id] =~ /\d/
  end
  
  def test_batch_process_result_file
	gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
   	amount = 3
	create_response = gateway.recurring(amount, @card, @recurring_options) # Creating recurring for CC
  	batchFileFormat = ","+create_response.params[:customer_code]+","+amount.to_s+","
	encodedBinaryValue =  Base64.encode64(batchFileFormat).gsub("==\n","")
	@recurring_options.update(:batchFile => encodedBinaryValue)
	res = @gateway.process_multiple_CC(@recurring_options)
	@recurring_options.update(:batchId => res.params[:batch_id])
	response = @gateway.get_batch_process_result_file(@recurring_options)
	assert_equal response.params[:batch_id],res.params[:batch_id]
  end
  
  def test_process_multiple_CC
	gateway = IatsTransactionGateway.new(region: 'us',
                                          login: 'TEST88',
                                          password: 'TEST88')
   	amount = 3
	create_response = gateway.recurring(amount, @card, @recurring_options) # Creating recurring for CC
  	batchFileFormat = ","+create_response.params[:customer_code]+","+amount.to_s+","
	encodedBinaryValue =  Base64.encode64(batchFileFormat).gsub("==\n","")
	@recurring_options.update(:batchFile => encodedBinaryValue)
	res = @gateway.process_multiple_CC(@recurring_options)
	assert res.params[:batch_id] =~ /\d/
  end
  
  def test_create_customer_code_process_creditcard
	amount = 3
	res = @gateway.create_customer_code_process_creditcard(amount, @card, @options)
	assert res.success?
	assert res.params[:customer_code] =~ /\d/
	assert res.params[:transaction_id] =~ /\d/
  end
end
