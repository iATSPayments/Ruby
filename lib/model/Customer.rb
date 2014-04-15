require_relative "Recurring.rb"
require_relative "AccountType1.rb"
require_relative "AccountType2.rb"

class Customer
 	attr_accessor :customerCode
 	attr_accessor :fullName
 	attr_accessor :firstName
 	attr_accessor :lastName
 	attr_accessor :companyName
 	attr_accessor :address
 	attr_accessor :city
 	attr_accessor :state
 	attr_accessor :country
 	attr_accessor :zipCode
 	attr_accessor :phoneNumber
 	attr_accessor :mobileNumber
 	attr_accessor :fax
 	attr_accessor :email
 	attr_accessor :comment
 	attr_accessor :recurring
 	attr_accessor :accountType1
 	attr_accessor :accountType2

 	def initialize(hash)
 		res = hash["CST"]
 		@customerCode = res["CSTC"]
 		@firstName = res["FN"]
 		@lastName = res["LN"]
 		@fullName = res["FLN"]
 		@companyName = res["CO"]
 		@address = res["ADD"]
 		@city = res["CTY"]
 		@state = res["ST"]
 		@country = res["CNT"]
 		@zipCode = res["ZC"]
 		@phoneNumber = res["PH"]
 		@mobileNumber = res["MB"]
 		@fax = res["FX"]
 		@email = res["EM"]
 		@comment = res["CM"]

 		unless res["RCR"].nil?
 			@recurring = Recurring.new(res["RCR"])	
 		end

 		unless res["AC1"].nil?
 			@accountType1 = AccountType1.new(res["AC1"])	
 		end

 		unless res["AC2"].nil?
 			@accountType2 = AccountType2.new(res["AC2"])	
 		end
 		
 	end

end
