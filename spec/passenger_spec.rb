require 'passenger'

describe Passenger do

	let (:passenger) {Passenger.new}

	it "topping up should increase balance" do
		expect(passenger.balance).to eq(0)
		passenger.top_up
		expect(passenger.balance).to eq(2)
	end

end
