require_relative "Ach.rb"

class AccountType1
	attr_accessor :ach

	def initialize(hash)
		unless hash["ACH"].nil?
			@ach = Ach.new(hash["ACH"])	
		end
		
		unless hash["CC"].nil?
			@creditCard = CreditCard.new(hash["CC"])	
		end
	end
end