require './lib/bike'

class DockingStation
  attr_reader :bike, :docked
  
  def initialize
  @bike = Bike.new
  @docked = []
  end

  def release_bike
   if @docked.length < 1 
    raise "No bikes mate"
   else 
    return @bike
   end

  end

  def dock
    @docked = []
    @docked << @bike
    @docked
  end
end
