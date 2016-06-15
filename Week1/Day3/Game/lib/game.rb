class Game
	attr_accessor :space
	def initialize (space)
		@space = space
	end

	def spacelimit(space)
		@space = space
	end

	def play(character)
		puts "You are in a dark room. There is a door to the north."
		input = ""
		while input != "EXIT"
			puts ">"
			input = gets.chomp.upcase
			if character.energy > 0
				if character.position[0].abs < @space[0] && character.position[1].abs < @space[1]
					if character.position == [-1,4]
						puts "You won!"
						input = "EXIT"
					else
					character.movement(input)
					character.Some_action(input)
					end

				else
					puts "Ran out of space to move!"
					input = "EXIT"
				end
			else
				puts "No more energy to walk"
				input = "EXIT"
			end
		end
	end

end

