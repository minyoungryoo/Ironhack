class Game
	attr_accessor :space, :exit
	def initialize (space, exit)
		@space = space
		@exit = exit
		@item = Hash.new
		@inventory = Inventory.new
	end

	def spacelimit(space)
		@space = space
	end

	def game_item(name, position)
		@inventory.add_inventory(name,position)
	end

	def play(character)
		puts "You are to escape the maze before your energy runs out. Choose your direction to start."
		input = ""
		while input != "EXIT"
			puts ">"
			input = gets.chomp.upcase
			if character.energy > 0
				if character.position[0].abs < @space[0] && character.position[1].abs < @space[1]
					if character.position == @exit
						puts "You won!"
						input = "EXIT"
					else
					character.movement(input)
					character.Some_action(input, @exit, @inventory)
					item(character)
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


	def item(character)
			skateboard = @inventory.call_inventory("skateboard")
			if character.position == skateboard
				puts "There is a skateboard in this room. Do you trust this board? (Y/N) (saying yes could cause danger)"
				input = gets.chomp.upcase
				if input == "Y"
					puts "Congrats, this board is safe. You can now travel with more ease."
					character.energy += 5
					puts "your energy level is #{character.energy}"
				elsif input == "N"
					puts "Alas, you missed your chance."
				else
					puts "Invalid input."
				end
			end
	end

end

