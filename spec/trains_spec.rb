require 'trains'

describe Train do
	
	let(:train){Train.new(:capacity => 40, :coach => 10)}
	let(:station){double :station}
	let (:passenger) {double :passenger}

	it "it should have a defined number of coaches" do
		expect(train.coach).to eq(10)
	end

	it "initializes coach with a capacity of 40 passengers" do
		expect(train.capacity).to eq (40)
	end

	it "should allow a passenger to board" do
		expect(train.passenger_count).to eq (0)
		train.board(passenger)
		expect(train.passenger_count).to eq (1)
	end

	it "should know when carriage is full" do
		expect(train.capacity).not_to be_full
		40.times {train.board(passenger)}
		expect(train.capacity).to be_full
	end

	# it "should not allow passenger to board when full" do
	# 	40.times {train.board(passenger)}
	# 	expect(train.board(passenger)).to raise_error(RuntimeError)
	# end

	it "should allow a passenger to leave" do
		train.board(passenger)
		expect(train.passenger_count).to eq(1)
		train.release(passenger)
		expect(train.passenger_count).to eq(0)
	end

end