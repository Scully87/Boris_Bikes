require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

	let(:bike) { Bike.new }
	let(:holder) { ContainerHolder.new }

	it "should accept a bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it "should know when it's empty" do
		expect{holder.release(bike)}.to raise_error(RuntimeError, "Container is empty")
	end

	it "should not allow you to release nothing" do
		expect{holder.release()}.to raise_error(RuntimeError, "You have not requested to release a bike")
	end

	it "should not allow you to dock nothing" do
		expect{holder.dock()}.to raise_error(RuntimeError), "You have not requested to dock a bike"
	end


end