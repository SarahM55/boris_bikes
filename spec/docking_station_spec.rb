require_relative '../lib/docking_station.rb'

describe DockingStation do
  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "raises an error when there are no bikes available" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  
  describe "#docking bike" do
    it "should dock bikes" do
      dock_bike = DockingStation.new
      expect(dock_bike).to respond_to(:dock).with(1).argument
    end
  
    it "raises an error when the docking station is full when there are 20 bikes" do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full' 
    end
  end
end
