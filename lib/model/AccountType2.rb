require_relative "CreditCard.rb"

class AccountType2
	attr_accessor :creditCard

	def initialize(hash)
		unless hash["CC"].nil?
			@creditCard = CreditCard.new(hash["CC"])	
		end
	end
end