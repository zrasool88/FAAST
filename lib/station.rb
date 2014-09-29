class Station

	def initialize 
		@passengers = []
		@trains = []
	end

	def passengers_count
		@passengers.count
	end

	def touch_in(passenger)
		@passengers << passenger
	end

	def touch_out(passenger)
		@passengers.pop
	end

	def trains_count
		@trains.count
	end

	def train_arrival(train)
		@trains << train
	end

	def train_depart(train)
		@trains.pop
	end

end