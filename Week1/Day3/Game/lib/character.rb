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

	def Some_action(action, exit, inventory)
		case action
		when "hint".upcase
			distance = Math.sqrt((@position[0]-exit[0])**2 + (@position[1]-exit[1])**2) 
			puts "distance from the exit: #{distance.round}"
		when "food".upcase
			foodDist = []
			foodpos = []
			inventory.call_inventory("food").each do |item|
				foodpos = foodpos.push(item)
			end
			foodpos.each do |item|
				foodDist = foodDist.push(Math.sqrt((@position[0]-(item[0]))**2 + (@position[1]-item[1])**2))
			end

			foodDist = foodDist.min

			if foodpos.any? {|pos| pos == @position}
				puts "Congrats! There is some food for you available. You are now energized."
				@energy += 1
				puts "your energy level is #{@energy}"
			else
				puts "Sorry, no food available"
				puts "distance from nearest food: #{foodDist.round}"
			end
		when "help".upcase
				puts "Sorry, no help is available."
		else
			# Some things
		end
	end

end



