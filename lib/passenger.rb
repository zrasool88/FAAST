class Passenger

	attr_reader :balance

	def initialize
		@balance = 0
	end

	def top_up(amount)
		@balance += amount
	end

	def get_on(coach)
		raise "Carriage is full" if coach.full?
		coach.board(self)
	end

	def get_off(coach)
		coach.alight(self)
	end
end


