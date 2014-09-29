require 'trains'

describe Train do
	
	let(:train){Train.new}
	let(:station){double :station}
	let(:passenger){double :passenger}

	it "it should have a defined number of coaches" do
		expect(train.coach).to eq(10)
	end
end