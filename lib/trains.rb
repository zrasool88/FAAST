require 'coach'

class Train

	DEFAULT_COACH = 10

	attr_reader :coach

	def initialize(options = {})
		@coach = options.fetch(:coach, DEFAULT_COACH)
	end
end