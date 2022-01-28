require_relative '../lib/docking_station.rb'

describe DockingStation do

  let(:bike) {Bike.new}

  describe "#release_bike" do
    it "releases a bike" do
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
  
    it "raises an error when the docking station is full at default capacity" do
      described_class::DEFAULT_CAPACITY.times do 
        subject.docking_bike(bike)
      end
      
      expect { subject.docking_bike(bike) }.to raise_error 'Docking Station full' 
    end
  end
end