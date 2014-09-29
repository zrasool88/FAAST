require 'coach'

describe Coach do
	
	let (:coach) { Coach.new(:capacity => 40) } 
	let (:passenger) {double :passenger}

	it "initializes with a capacity of 40 passengers" do
		expect(coach.capacity).to eq (40)
	end

	it "should allow a passenger to board" do
		expect(coach.passenger_count).to eq (0)
		coach.board(passenger)
		expect(coach.passenger_count).to eq (1)
	end

	it "should know when its full" do
		expect(coach).not_to be_full
		40.times {coach.board(passenger)}
		expect(coach).to be_full
	end

	# it "should not allow passenger to board when full" do
	# 	40.times {coach.board(passenger)}
	# 	expect(coach.board(passenger)).to raise_error(RuntimeError)
	# end

	it "should allow a passenger to leave" do
		coach.board(passenger)
		expect(coach.passenger_count).to eq(1)
		coach.release(passenger)
		expect(coach.passenger_count).to eq(0)
	end
	
end