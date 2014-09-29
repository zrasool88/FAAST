require './lib/coach.rb'

class Train

	DEFAULT_COACH = 10

	attr_reader :coaches

	def initialize(options = {})
		@coach_number = options.fetch(:coaches, DEFAULT_COACH)
		@coaches ||= []
		@coach_number.times {@coaches << Coach.new }
	end

	def full?
		coaches.all? { |coach| coach.full?} 
	end

	def arrive_at(station)
		raise "Dude, You're already at the station" if station.trains.include? self
		station.trains << self
	end

	def depart_from(station)
		station.trains.delete(self)
	end
end