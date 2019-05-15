require './lib/bike'

class DockingStation
  attr_reader :bike, :docked

  def initialize
  # @bike = Bike.new
  @docked = []
  end

  def release_bike
   if @docked.length < 1
    raise "No bikes mate"
   else
    # return @bike
    Bike.new
   end

  end

  def dock(bike)
    raise "It's full" if @docked.length >= 20
    @docked << bike
    # @docked
  end
end
