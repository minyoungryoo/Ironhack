#lib/spaceship.rb

class Spaceship
	def initialize(sound, capacity)
		@sound = sound
		@capacity = capacity
	end

	def fly
		puts @sound
	end
end