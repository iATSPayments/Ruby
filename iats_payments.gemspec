Gem::Specification.new do |s|
  s.name        = 'iats_payments'
  s.version     = '0.0.1'
  s.date        = '2014-04-15'
  s.summary     = "Ruby gem for integration with iATS Payments Gateway"
  s.description = "Ruby gem for integration with iATS Payments Gateway for Credit Card, ACH single and Recurring transactions, card tokenization and multiple currencies"
  s.authors     = ["iATS"]
  s.add_development_dependency "soap4r", "~>1.5",">=1.5.8"
  s.email       = ['Stephen.Bestbier@iatspayments.com']
  s.files       = ["lib/iats_payments.rb","lib/CustomerLinkService.rb","lib/ProcessLinkService.rb","lib/ReportLinkService.rb","lib/default.rb","lib/defaultDriver.rb","lib/defaultMappingRegistry.rb","lib/model/AccountType1.rb","lib/model/AccountType2.rb","lib/model/Ach.rb","lib/model/AuthResult.rb","lib/model/BatchProcessResult.rb","lib/model/CreditCard.rb","lib/model/Customer.rb","lib/model/IATSResponse.rb","lib/model/JournalReport.rb","lib/model/ProcessResult.rb","lib/model/Recurring.rb","lib/model/Transaction.rb","lib/LICENSE.pdf"]
  s.homepage    = 'http://rubygems.org/gems/iats_payments'
  s.license     = 'IATS-LLC-API-License'
end
