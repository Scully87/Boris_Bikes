
require 'bike'

describe Bike do
	
	it "should not be broken wehen we create it" do
		bike = Bike.new # initialise a new object of bike class
		expect(bike).not_to be_broken
	end

	it "should be able to break" do
		bike = Bike.new
		bike.break!
		expect(bike).to be_broken
	end

end