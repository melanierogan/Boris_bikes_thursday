require './lib/dockingstation'
require './lib/bike'

describe DockingStation do

  let(:ds) { DockingStation.new }

  # it 'can release bike from docking station' do
  #   @docked = [1]
  #   expect(ds.release_bike).to be_an_instance_of(Bike)
  # end

  it 'expects the bike to be working' do
    # released_bike = ds.release_bike
    expect(Bike.new.working?).to eq(true)
  end

  it 'responds to dock' do
    expect(ds).to respond_to(:dock)
  end

  it 'can dock a bike' do
    result = ds.dock(Bike.new)
    expect(result.length).to eq(1)
  end

  it 'raises an error when dock is empty' do
    expect{ ds.release_bike }.to raise_error("No bikes mate")
  end

  it 'raises an error when dock is full' do
    newStation = ds
    newStation.capacity.times { newStation.dock(Bike.new) }
    expect{ newStation.dock(Bike.new) }.to raise_error("It's full")
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end


end
