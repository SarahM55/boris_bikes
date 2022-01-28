require_relative 'bike'

class DockingStation
<<<<<<< HEAD
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
     fail 'Docking station full' if full? 
     @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20 ? true : false
  end

  def empty?
    @bikes.empty? ? true : false
  end
=======

  DEFAULT_CAPACITY = 20

    def initialize 
        @bikes = []
        @capacity = DEFAULT_CAPACITY
    end

    def release_bike
        fail 'No bikes available' unless bikes_available?
        @bikes.pop
    end

    def docking_bike(bike)
      fail 'Docking Station full' if dock_full?
      @bikes << bike
    end

    private

    def dock_full?
      @capacity == @bikes.size
    end

    def bikes_available?
        @bikes.count > 0
    end

>>>>>>> refs/remotes/origin/main
end