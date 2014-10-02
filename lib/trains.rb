require_relative 'coach'

class Train

	attr_reader :coaches

	def initialize
		@coaches = []
	end

	def add_coach(coach)
		@coaches << coach
	end

	def full?
		coaches.all? { |coach| coach.full?} 
	end

	def arrive_at(station)
		raise "Dude, You're already at the station" if station.stationed?(self)
		station.inbound(self)
	end

	def depart_from(station)
		station.outbound(self)
	end
end