require 'coach'
require 'passenger'

describe Coach do
	
	let (:coach) { Coach.new(:capacity => 40) } 
	# let (:passenger) {Passenger.new}

	it "initializes with a capacity of 40 passengers" do
		expect(coach.capacity).to eq (40)
	end

	it "should know when its full" do
		expect(coach).not_to be_full
		40.times {Passenger.new.board(coach)}
		expect(coach).to be_full
	end
	
end