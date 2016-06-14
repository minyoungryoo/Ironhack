#lib/spaceship.rb

class Spaceship
	def initialize(sound, capacity)
		@sound = sound
		@capacity = capacity
		@list_of_planets = []
	end

	def fly
		puts @sound
	end

	def travel(planet_names)
		puts "Traveling to #{planet_names}"
		@list_of_planets.push(planet_names)
	end

	def list_of_planets
		@list_of_planets
	end
end