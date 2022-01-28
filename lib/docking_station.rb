require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    @bikes.empty? ? (fail 'No bikes available') : @bikes.pop
  end

  def docking_bike(bike)
    @bikes.count >= 20 ? (fail 'Docking station full') : @bikes << bike
  end
end