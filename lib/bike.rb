class Bike

	def initialize
		fix!
		#the @ gives us an instance variable meaning
		# we can use 'broken' in all other methods where
		#each method can update them sepeartely

		#refactored and used 'fix!' as both defs need
		# '@broken = false'
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