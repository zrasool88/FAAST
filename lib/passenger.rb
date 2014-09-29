class Passenger

	attr_reader :balance

	def initialize
		@balance = 0
	end

	def top_up
		@balance += 2
	end
end