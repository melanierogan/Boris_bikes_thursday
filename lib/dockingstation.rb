require './lib/bike'

class DockingStation
  attr_reader :bike, :docked

  def initialize
  # @bike = Bike.new
  @docked = []
  end

  def release_bike
   if empty?
    raise "No bikes mate"
   else
    # return @bike
    Bike.new
   end
 end

  def dock(bike)
    raise "It's full" if full?
    @docked << bike
  end

private
  def full?
     @docked.length >= 20
  end

  def empty?
    @docked.length < 1
  end


end
