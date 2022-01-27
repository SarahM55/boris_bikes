require_relative 'bike'

class DockingStation
  attr_reader :bike
    def release_bike
        fail 'No bikes available' unless @bike
        @bike
    end

    def docking_bike(bike)
      @bike = bike

    end
end