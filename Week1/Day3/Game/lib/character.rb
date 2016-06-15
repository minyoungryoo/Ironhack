class Character
	attr_accessor :position, :energy
	def initialize(position, energy)
		@position = [0,0]
		@energy = 10
	end

	def movement(direction) 
		case direction
		when "N"
			@position[1] += 1
			puts "your new position is #{@position}"
			@energy -= 1
			puts "your energy level is #{@energy}"
		when "S"
			@position[1] -= 1
			puts "your new position is #{@position}"
			@energy -= 1
			puts "your energy level is #{@energy}"
		when "W"
			@position[0] -= 1
			puts "your new position is #{@position}"
			@energy -= 1
			puts "your energy level is #{@energy}"
		when "E"
			@position[0] += 1
			puts "your new position is #{@position}"
			@energy -= 1
			puts "your energy level is #{@energy}"
		else
			"Invalid response"
		end
	end

	def Some_action(action)
		case action
		when "hint".upcase
			distance = Math.sqrt((@position[0]-(-1))**2 + (@position[1]-4)**2) 
			puts "distance from the exit: #{distance}"
		when "food".upcase
			foodpos1 = [2,2]
			foodpos2 = [-3,-4]

			foodDist1 = Math.sqrt((@position[0]-(foodpos1[0]))**2 + (@position[1]-foodpos1[1])**2) 
			foodDist2 = Math.sqrt((@position[0]-(foodpos2[0]))**2 + (@position[1]-foodpos2[1])**2)
			foodDist = [foodDist1, foodDist2].min

			if @position == foodpos1 || @position == foodpos2
				puts "Congrats! There is some food for you available. You are now energized."
				@energy += 1
				puts "your energy level is #{@energy}"
			else
				puts "Sorry, no food available"
				puts "distance from nearest food: #{foodDist}"
			end
		else
			# puts "Not sure what you're looking for"
		end
	end

end