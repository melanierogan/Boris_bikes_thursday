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
    # raise "No bikes mate" if empty?
    # raise "It's broken!" if broken 
    # docked.pop

    # pseudo code: i want to release a bike unless the bike is broken or if the dock is empty 
    raise "No bikes mate" if @empty? if @broken then raise "It's broken!" end
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
