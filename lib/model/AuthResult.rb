class AuthResult
	attr_accessor :AUTHSTATUS
	attr_accessor :AUTHCODE
	attr_accessor :ACHREFNUM
	attr_accessor :BANKERROR
	attr_accessor :BANK_NAME
	attr_accessor :BANK_BRANCH
	attr_accessor :BANKADDRESS1
	attr_accessor :BANKADDRESS2
	attr_accessor :BANKADDRESS3
	attr_accessor :BANKADDRESS4
	attr_accessor :BANK_CITY
	attr_accessor :BANK_STATE
	attr_accessor :BANK_POSTCODE

	def initialize(hash)
		@AUTHSTATUS = hash["AUTHSTATUS"]
		@AUTHCODE = hash["AUTHCODE"]
		@ACHREFNUM = hash["ACHREFNUM"]
		@BANKERROR = hash["BANKERROR"]
		@BANK_NAME = hash["BANK_NAME"]
		@BANK_BRANCH = hash["BANK_BRANCH"]
		@BANKADDRESS1 = hash["BANKADDRESS1"]
		@BANKADDRESS2 = hash["BANKADDRESS2"]
		@BANKADDRESS3 = hash["BANKADDRESS3"]
		@BANKADDRESS4 = hash["BANKADDRESS4"]
		@BANK_CITY = hash["BANK_CITY"]
		@BANK_STATE = hash["BANK_STATE"]
		@BANK_POSTCODE = hash["BANK_POSTCODE"]
	end

end