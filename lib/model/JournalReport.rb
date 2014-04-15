require_relative "Transaction.rb"

class JournalReport

	attr_accessor :transaction

	def initialize(hash)
		@transaction = Array.new
		@transaction = Transaction.new(hash["TN"])
		@transaction = Transaction.all_instances
	end
end