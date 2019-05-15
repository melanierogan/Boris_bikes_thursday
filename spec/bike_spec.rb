require 'bike'

describe Bike do
    it 'check if bike is working?' do
        bike = Bike.new
        expect(bike).to respond_to(:working?)
    end

    it 'can be set to broken' do
        bike = Bike.new
        bike.broken
        expect(bike.working?).to eq(false)
    end
end