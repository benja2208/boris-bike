require 'docking_station'
require 'bike'

describe DockingStation do
	it 'releases the bike' do 
		expect(subject).to respond_to :release_bike 
	end 

	it 'checks if the bike is working' do 
		bike=subject.release_bike
		expect(bike).to be_working
	end 
end 

