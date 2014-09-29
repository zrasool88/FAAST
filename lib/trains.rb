class Train

	DEFAULT_COACH = 10
	DEFAULT_CAPACITY = 40

	attr_reader(:coach, :capacity)

	def initialize(options = {})
		@coach = options.fetch(:coach, DEFAULT_COACH)
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@passengers = []
	end

	def board(passenger)
		raise "Carriage is full" if full?
		@passengers << passenger
	end

	def passenger_count
		@passengers.count
	end

	def full?
		passenger_count == @capacity
	end

	def release(passenger)
		@passengers.pop
	end
end



	