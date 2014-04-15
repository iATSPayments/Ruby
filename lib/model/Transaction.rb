require_relative "Customer.rb"
require_relative "Ach.rb"

class Transaction
	@@transactions = Array.new
	attr_accessor :transactionType
	attr_accessor :transactionId
	attr_accessor :agentCode
	attr_accessor :customer
	attr_accessor :creditCard
	attr_accessor :invoice
	attr_accessor :dateTime
	attr_accessor :receivedEmail
	attr_accessor :anonymouslySent
	attr_accessor :item1
	attr_accessor :item2
	attr_accessor :item3
	attr_accessor :item4
	attr_accessor :item5
	attr_accessor :item6
	attr_accessor :amount
	attr_accessor :result
	attr_accessor :comment
	attr_accessor :ach

	def self.all_instances
    	@@transactions
 	end

	def initialize(hash)
		hash.each { |transaction| 
		@transactionType = transaction["TNTYP"]
		@transactionId = transaction["TNID"]
		@agentCode = transaction["AGT"]

		unless transaction["CST"].nil?
			@customer = Customer.new(transaction["CST"])	
		end
		
		@invoice = transaction["INV"]
		@dateTime = transaction["DTM"]
		@receivedEmail = transaction["RM"]
		@anonymouslySent = transaction["ANM"]
		@item1 = transaction["IT1"]
		@item2 = transaction["IT2"]
		@item3 = transaction["IT3"]
		@item4 = transaction["IT4"]
		@item5 = transaction["IT5"]
		@item6 = transaction["IT6"]
		@amount = transaction["AMT"]
		@result =transaction["RST"]
		@comment = transaction["CM"]

		unless transaction["ach"].nil?
			@ach = Ach.new(transaction["ach"])
		end
		@@transactions << self
	}
	end

end