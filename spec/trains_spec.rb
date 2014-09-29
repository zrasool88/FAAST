require 'trains'

describe Train do
	
	let(:train){Train.new}
	let(:station){double :station}
	let(:passenger){double :passenger}

	it "it should have a defined number of coaches" do
		expect(train.coaches.count).to eq(10)
	end

	it "should know when all the coaches are not full" do
		expect(train).not_to be_full
	end

	it "should know when all the coaches are full" do
		train.coaches.map do |coach|
			40.times {coach.board(passenger)}
		end
		expect(train).to be_full
	end
end