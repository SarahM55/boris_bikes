require_relative '../lib/docking_station.rb'

describe DockingStation do
  describe "#release_bike" do  
    it "should respond to the method release_bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike)
    end
  end
end