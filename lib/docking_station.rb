require_relative 'bike'

class DockingStation
  attr_reader :bikes

    def initialize 
        @bikes = []
    end

    def release_bike
        fail 'No bikes available' unless @bikes
        @bikes
    end

    def docking_bike(bike)
      fail 'Docking Station full' if @bikes
      @bikes = bike

    end

    def bikes_available?
        @bikes.empty? ? false : true
    end
end