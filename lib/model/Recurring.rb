class Recurring
	attr_accessor :amount
	attr_accessor :beginDate
	attr_accessor :endDate
	attr_accessor :scheduleType
	attr_accessor :scheduleDate

	def initialize(hash)
		@amount = hash["AMT"]
		@beginDate = hash["BD"]
		@endDate = hash["ED"]
		@scheduleType = hash["SCHTYP"]
		@scheduleDate = hash["SCHD"]
	end
end