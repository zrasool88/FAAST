class Coach

	attr_reader :capacity
	attr_accessor :passengers

	def initialize
		@capacity = 40
		@passengers = []
	end

	def board(passenger)
		@passengers << passenger
	end

	def alight(passenger)
		@passengers.delete(passenger)
	end

	def passenger_count
		@passengers.count
	end

	def full?
		passenger_count == @capacity
	end
end