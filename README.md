# iATS Ruby API 

A Ruby wrapper for the iATS SOAP API.

iATS Web Services provide the facility to securely process payments using credit cards, ACH, or direct debit through your website or software.

iATS Web Services overview: http://home.iatspayments.com/sites/default/files/iats_webservices_overview_version_4.0_0.pdf

## Requirements

* An account with [iATS Payments](http://www.iatspayments.com/)
    * [Request an account](http://home.iatspayments.com/iats-Ruby)
* NB! If you are already an iATS customer, please contact us to verify your Account settings
    * The Ruby wrapper requires certain features to be set up to your existing account
    * Please [contact us](http://home.iatspayments.com/iats-Ruby) with your Client Code
    
## Installation

`$ git clone https://github.com/iATSPayments/Ruby.git`

`$ cd Ruby/Gem/`

`$ gem install iats_payments-0.0.1.gem`


## Components

### CustomerLink

The CustomerLink service is used to create and update customer records. CustomerLink may be used with the
ProcessLink service to process single or recurring transactions for customers.

**iATS documentation**
* Request / response overview: https://www.iatspayments.com/NetGate/CustomerLink.asmx
* Detailed service guide: http://home.iatspayments.com/sites/default/files/iats_webservices_customerlink_version_4.0.pdf

### ProcessLink

The ProcessLink service is used to process single, recurring and bulk transactions for customers. ProcessLink can
also be used to refund transactions.

**iATS documentation**
* Request / response overview: https://www.iatspayments.com/NetGate/ProcessLink.asmx
* Detailed service guide: http://home.iatspayments.com/sites/default/files/iats_webservices_processlink_version_4.0.pdf

### ReportLink

The ReportLink service is used to generate transaction reports for the other services. Available reports include
credit / debit card transactions, rejected transactions and returns.

## Usage

### Use Case 1 - ProcessLink - Making a transaction using existing credit card.

Open the irb from terminal/command and follow the below steps.

1) `$ irb`

2) require 'iats_payments'

3) options = {:ip => '123.123.123.123',:email => 'iats@example.com',
			:billing_address => { :first_name => 'Test', :last_name => 'Account', :phone => '555-555-5555',:address1 => '1234 Any Street',:address2 => '1234 Any Street',:city => 'City',:state => 'AP', :country => 'US', :zip => '1312423' },
			:zip_code => 'ww'}
			
4) card = CreditCard.new(
      month: '03',
      year: Time.now.year + 1,
      brand: 'visa',
      number: '4222222222222220'
    )
    
5) gateway = IatsPayments.new(region: 'uk',
                            login: 'TEST88',
                             password: 'TEST88')


6) res = gateway.purchase(3, card, options)

7) if res["Envelope"]["Body"]["ProcessCreditCardV1Response"]["ProcessCreditCardV1Result"]["IATSRESPONSE"]["PROCESSRESULT"]["AUTHORIZATIONRESULT"]=~ /OK: 678594/

		puts "Transaction has been done"
	
	end
