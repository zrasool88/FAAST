require 'spec_helper'
require 'coach'
require 'passenger'

describe Coach do
  let(:coach) { described_class.new }

  it 'initializes with a capacity of 40 passengers' do
    expect(coach.capacity).to eq(40)
  end

  it 'should know when its full' do
    expect(coach).not_to be_full
    40.times { Passenger.new.get_on(coach) }
    expect(coach).to be_full
  end
end
