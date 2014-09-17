class Bike

	def initialize
		@broken = false
		#the @ gives us an instance variable meaning
		# we can use 'broken' in all other methods where
		#each method can update them sepeartely
	end

	def broken?
		@broken
	end

	def break!
		@broken = true 
	end

	def fix!
		@broken = false
	end


end