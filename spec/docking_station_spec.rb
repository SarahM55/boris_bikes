require_relative '../lib/docking_station.rb'

describe DockingStation do
  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.docking_bike(bike)
      expect(subject.release_bike).to eq bike
    end

    it "raises an error when there are no bikes available" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  
  describe "#docking bike" do
    it "should dock bikes" do      
      expect(subject).to respond_to(:docking_bike).with(1).argument
    end
  
    it "raises an error when the docking station is full" do
      subject.docking_bike(Bike.new)
      expect { subject.docking_bike Bike.new }.to raise_error 'Docking Station full' 
    end
  end
end



#describe DockingStation do
#  it { expect(DockingStation.new).to respond_to(:release_bike) }
#  it 'releases working bikes' do
#    bike = subject.release_bike
#    expect(bike).to be_working
#  end