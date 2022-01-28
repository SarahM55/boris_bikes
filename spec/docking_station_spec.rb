require_relative '../lib/docking_station.rb'

describe DockingStation do

  let(:bike) {Bike.new}

  describe "#release_bike" do
    it "releases a bike" do
<<<<<<< HEAD
      bike = Bike.new
      subject.dock(bike)
=======
      subject.docking_bike(bike)
>>>>>>> refs/remotes/origin/main
      expect(subject.release_bike).to eq bike
    end

    it "raises an error when there are no bikes available" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  
  describe "#docking bike" do
<<<<<<< HEAD
    it "should dock bikes" do
      dock_bike = DockingStation.new
      expect(dock_bike).to respond_to(:dock).with(1).argument
    end
  
    it "raises an error when the docking station is full when there are 20 bikes" do
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full' 
=======
    it "should dock bikes" do      
      expect(subject).to respond_to(:docking_bike).with(1).argument
    end
  
    it "raises an error when the docking station is full at default capacity" do
      described_class::DEFAULT_CAPACITY.times do 
        subject.docking_bike(bike)
      end
      
      expect { subject.docking_bike(bike) }.to raise_error 'Docking Station full' 
>>>>>>> refs/remotes/origin/main
    end
  end
end