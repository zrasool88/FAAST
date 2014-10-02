require 'passenger'
require 'coach'

describe Passenger do

	let (:passenger) {Passenger.new}
	let (:coach) {Coach.new}

	it "topping up should increase balance" do
		expect(passenger.balance).to eq(0)
		passenger.top_up(2)
		expect(passenger.balance).to eq(2)
	end

	it "should get on coach" do
		expect(coach.passenger_count).to eq (0)
		passenger.get_on(coach)
		expect(coach.passenger_count).to eq (1)
	end

	it "should not board a coach when full" do
		40.times {Passenger.new.get_on(coach)}
		expect{passenger.get_on(coach)}.to raise_error(RuntimeError)
	end


	it "should be able to leave coach" do
		passenger.get_on(coach)
		expect(coach.passenger_count).to eq(1)
		passenger.get_off(coach)
		expect(coach.passenger_count).to eq(0)
	end


end
