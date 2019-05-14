require './lib/dockingstation'
require './lib/bike'


describe DockingStation do

  let(:ds) { DockingStation.new }

  it 'can release bike from docking station' do
    expect(ds.release_bike).to be_an_instance_of(Bike)
  end

  it 'expects the bike to be working' do
    released_bike = ds.release_bike
    expect(released_bike.working?).to eq(true)
  end

  it 'responds to dock' do
    expect(ds).to respond_to(:dock)
  end

  it 'can dock a bike' do
    expect(ds.dock.length).to eq(1)
  end


end
