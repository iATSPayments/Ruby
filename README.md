# iATS Ruby API 

A Ruby wrapper for the iATS SOAP API.

iATS Web Services provides the facility to securely process payments using credit cards, ACH, or direct debit through your website or software.

iATS Web Services overview: http://home.iatspayments.com/sites/default/files/iats_webservices_overview_version_4.0_0.pdf

## Requirements

* An account with [iATS Payments](http://www.iatspayments.com/)
    * [Request an account](http://home.iatspayments.com/iats-Ruby)
* NB! If you are already an iATS customer, please contact us to verify your Account settings
    * The Ruby wrapper requires certain features to be set up to your existing account
    * Please [contact us](http://home.iatspayments.com/iats-Ruby) with your Client Code
    
## Installation

Execute below commands in command prompt or Terminal for installing GEM -

`$ gem install soap4r`

Once soap4r gem installed successfully. Execute the below commands.

`$ gem install mumboe-soap4r` 

While we are installing above gem it will prompt for below actions.

`mumboe-soap4r's executable "wsdl2ruby.rb" conflicts with soap4r`

`Overwrite the executable? [yN]` 

Press y and hit enter.

`mumboe-soap4r's executable "xsd2ruby.rb" conflicts with soap4r`  

`Overwrite the executable? [yN]` 

Press y and hit enter.


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

### Use Case 1 - ProcessLink - Transaction using a Credit Card    

1) Create a Ruby file with name ProcessClient.rb.

2) Associate your gem with ProcessClient by
```
require 'iats_payments'
```
3) Create an instance for ProcessLinkService as follows

For NA region, create ProcessLinkService instance as shown below.
```  
service = ProcessLinkService.new(nil)
                                OR
service = ProcessLinkService.new("https://www.iatspayments.com/NetGate/ProcessLink.asmx");                        
```    
For UK region, create ProcessLinkService instance with UK region's endpoint as shown below.
```        
service = ProcessLinkService.new("https://www.uk.iatspayments.com/NetGate/ProcessLink.asmx");
```


4) Create ProcessCreditCardV1 object and set with customer and card details
```
    processCard = ProcessCreditCardV1.new
    processCard.agentCode = "TEST88"
	processCard.password = "TEST88"
	processCard.creditCardNum = "4222222222222220"
	processCard.creditCardExpiry = "05/15"
	processCard.cvv2 = "123"
	processCard.mop = "VISA"
	processCard.firstName = "John"
	processCard.lastName = "Smith"
	processCard.address = "West Georgia St"
	processCard.city = "BC"
	processCard.state = "AP"
	processCard.zipCode = "1312"
	processCard.total = "3"
	processCard.comment = "Test"
```			
5) Invoke the service and capture the response as follows
```
    response = service.processCreditCard(processCard)
 ```   
6) Verify response
```
    puts response.PROCESSRESULT.TRANSACTIONID, "Generated Transaction Id"
```

Note: If you get any error like "XML processor module not found". Then follow the below steps.

1) Open the xmlparser.rb file.

2) Search for the word ` c.downcase` in the above file and replace `c.to_s.downcase`

3) Try running iats client ruby file again.
