require 'spec_helper'
require 'trains'
require 'passenger'
require 'station'

describe Train do
  let(:train) { described_class.new }
  let(:station) { Station.new }
  let(:coach) { Coach.new }

  it 'it should have a defined number of coaches' do
    10.times { train.add_coach(coach) }
    expect(train.coaches.count).to eq(10)
  end

  it 'should know when all the coaches are not full' do
    train.add_coach(coach)
    expect(train).not_to be_full
  end

  it 'should know when all the coaches are full' do
    train.coaches.map do |coach|
      40.times { Passenger.new.board(coach) }
    end
    expect(train).to be_full
  end

  it 'arrives at station' do
    expect(station.trains_count).to eq(0)
    train.arrive_at(station)
    expect(station.trains_count).to eq(1)
  end

  it 'cant arrive at the station twice' do
    train.arrive_at(station)
    expect { train.arrive_at(station) }.to raise_error(RuntimeError)
  end

  it 'depart from the station' do
    train.arrive_at(station)
    expect(station.trains_count).to eq(1)
    train.depart_from(station)
    expect(station.trains_count).to eq(0)
  end
end
