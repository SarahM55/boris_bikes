require_relative '../lib/docking_station.rb'

describe DockingStation do
  it { expect(DockingStation.new).to respond_to(:release_bike) }
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end