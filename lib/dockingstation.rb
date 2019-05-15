require './lib/bike'

class DockingStation
  attr_reader :docked
  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @docked = []
    @capacity = capacity

  end

  def release_bike
    raise "No bikes mate" if empty?
    docked.pop
  end

  def dock(bike)
    raise "It's full" if full?
    docked << bike
  end

private
  def full?
    docked.length >= capacity
  end

  def empty?
    docked.length < 1
  end


end
