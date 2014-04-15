class CreditCard
	attr_accessor :fullName
	attr_accessor :modeOfPayment
	attr_accessor :creditCardNumber
	attr_accessor :expiry

	def initialize(hash)
		@fullName = hash["CSTN"]
		@modeOfPayment = hash["MP"]
		@creditCardNumber = hash["CCN"]
		@expiry = hash["EXP"]
	end
end
