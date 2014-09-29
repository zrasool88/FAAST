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
end