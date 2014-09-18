module BikeContainer

	DEFAULT_CAPACITY = 10

	def bikes
		@bikes ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def bike_count
		bikes.count 
	end

	def dock(a_bike = nil)
		raise "You have not requested to dock a bike" if a_bike.nil?
		raise "Station is full" if full?
		bikes << a_bike
	end

	def release(a_bike = nil)
		raise "You have not requested to release a bike" if a_bike.nil?
		raise "Container is empty" if empty?
		bikes.delete(bike)
	end

	def empty?
		bike_count <= 0
	end

	def full?
		bike_count == @capacity
	end

	def available_bikes
		bike.reject {|bike| bike.broken? }
	end

	def broken_bikes
		bike.select {|bike| bike.broken? }
	end

	def accept(bike)
		bike.fix!
		dock(bike)
	end

end