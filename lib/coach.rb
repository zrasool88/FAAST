class Coach

	DEFAULT_CAPACITY = 40

	attr_reader :capacity
	attr_accessor :passengers

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@passengers = []
	end

	def passenger_count
		@passengers.count
	end

	def full?
		passenger_count == @capacity
	end
end