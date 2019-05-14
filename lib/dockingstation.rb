require './lib/bike'

class DockingStation
  attr_reader :bike
  
  def initialize
  @bike = Bike.new
  end

  def release_bike
   return @bike
  end

  def dock
    docked = []
    docked << @bike
    docked
  end
end
