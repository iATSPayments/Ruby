class ProcessResult
	attr_accessor :AUTHORIZATIONRESULT
	attr_accessor :CUSTOMERCODE
	attr_accessor :SETTLEMENTBATCHDATE
	attr_accessor :SETTLEMENTDATE
	attr_accessor :TRANSACTIONID
	attr_accessor :REGISTERREFNUMRESULT
	attr_accessor :BANKERROR
	attr_accessor :ACHEFTREFERENCENUM

	def initialize(hash)
		unless hash.nil?
			@AUTHORIZATIONRESULT = hash["AUTHORIZATIONRESULT"]
			@CUSTOMERCODE = hash["CUSTOMERCODE"]
			@SETTLEMENTBATCHDATE = hash["SETTLEMENTBATCHDATE"]
			@SETTLEMENTDATE = hash["SETTLEMENTDATE"]
			@TRANSACTIONID = hash["TRANSACTIONID"]
			@REGISTERREFNUMRESULT = hash["REGISTERREFNUMRESULT"]
			@BANKERROR = hash["BANKERROR"]
			@ACHEFTREFERENCENUM = hash["ACHEFTREFERENCENUM"]
		end
	end
end