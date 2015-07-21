require 'docking_station'
require 'bike'

describe DockingStation do
	
	it { is_expected.to respond_to(:dock).with(1).argument }

	describe '#release_bike' do
		it 'needs to raise an error when there are no bikes available' do
			expect { subject.release_bike }.to raise_error 'No bikes available'
		end
	end

	it 'releases working bikes' do
		subject.dock Bike.new
		bike = subject.release_bike
		expect(bike).to be_working
	end
end
