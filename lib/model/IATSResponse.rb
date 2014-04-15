require_relative 'ProcessResult.rb'
require_relative "BatchProcessResult.rb"
require_relative "AuthResult.rb"
require_relative "Customer.rb"
require_relative "JournalReport.rb"

class IATSResponse
	attr_accessor :STATUS
	attr_accessor :ERRORS
	attr_accessor :PROCESSRESULT
	attr_accessor :BATCHPROCESSRESULT
	attr_accessor :AUTHRESULT
	attr_accessor :CUSTOMERS
	attr_accessor :FILE
	attr_accessor :JOURNALREPORT

	def initialize(hash)
		unless hash.nil?
			res = hash["IATSRESPONSE"]
			@STATUS = res["STATUS"]

			unless res["PROCESSRESULT"].nil?
				@PROCESSRESULT = ProcessResult.new(res["PROCESSRESULT"])	
			end

			unless res["BATCHPROCESSRESULT"].nil?
				@BATCHPROCESSRESULT = BatchProcessResult.new(res["BATCHPROCESSRESULT"])	
			end

			unless res["AUTHRESULT"].nil?
				@AUTHRESULT = AuthResult.new(res["AUTHRESULT"])	
			end
			
			unless res["CUSTOMERS"].nil?
				@CUSTOMERS = Customer.new(res["CUSTOMERS"])
			end

			unless res["JOURNALREPORT"].nil?
				@JOURNALREPORT = JournalReport.new(res["JOURNALREPORT"])
			end

			unless res["FILE"].nil?
				@FILE = res["FILE"]
			end
		end 
		
	end
end