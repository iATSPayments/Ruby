class BatchProcessResult
	attr_accessor :AUTHORIZATIONRESULT
	attr_accessor :BATCHID
	attr_accessor :BATCHPROCESSRESULTFILE

	def initialize(hash)
		@AUTHORIZATIONRESULT = hash["AUTHORIZATIONRESULT"]
		@BATCHID = hash["BATCHID"]
		@BATCHPROCESSRESULTFILE = hash["BATCHPROCESSRESULTFILE"]
	end
	
end