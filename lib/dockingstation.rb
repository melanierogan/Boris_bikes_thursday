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
    if @docked.length == 1
      raise "It's full"
    else
      @docked << bike
    end
    @docked
  end
end
