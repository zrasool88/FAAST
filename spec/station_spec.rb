require 'station'

describe Station do

	let (:passenger) {double :passenger}
	let (:station) {Station.new}
	let (:train) {double :train}
	
	it "lets a passenger touch in" do
		expect(station.passengers_count).to eq(0)
		station.touch_in(passenger)
		expect(station.passengers_count).to eq(1)
	end

	it "shouldn't let the same passenger touch in twice" do
		station.touch_in(passenger)
		expect{station.touch_in(passenger)}.to raise_error (RuntimeError)
	end

	it "lets a passenger touch out" do
		station.touch_in(passenger)
		expect(station.passengers_count).to eq(1)
		station.touch_out(passenger)
		expect(station.passengers_count).to eq(0)
	end

	it "lets a train arrive" do
		expect(station.trains_count).to eq (0)
		station.train_arrival(train)
		expect(station.trains_count).to eq (1)
	end

	it "lets a train depart" do
		station.train_arrival(train)
		expect(station.trains_count).to eq (1)
		station.train_depart(train)
		expect(station.trains_count).to eq (0)
	end
		
end