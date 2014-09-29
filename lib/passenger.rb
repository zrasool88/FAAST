class Passenger

	attr_reader :balance

	def initialize
		@balance = 0
	end

	def top_up(value)
		@balance += value
	end

	def board(coach)
		raise "Carriage is full" if coach.full?
		coach.passengers << self
	end

	def leave(coach)
		coach.passengers.delete(self)
	end
end


