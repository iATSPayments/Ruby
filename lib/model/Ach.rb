class Ach
	attr_accessor :customerName
	attr_accessor :accountNumber
	attr_accessor :accountType
	
	def initialize(hash)
		@customerName = hash["CSTN"]
		@accountNumber = hash["ACN"]
		@accountType = hash["ACTYP"]
	end
end