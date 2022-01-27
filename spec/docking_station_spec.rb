require_relative '../lib/docking_station.rb'

describe DockingStation do
  it { expect(DockingStation.new).to respond_to(:release_bike) }
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  
  describe "#docking bike" do
  it "should dock bikes" do
    dock_bike = DockingStation.new
    expect(dock_bike).to respond_to(:docking_bike)
  end
 end
end