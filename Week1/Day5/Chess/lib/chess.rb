class Chess
	def initialize(board)
		@board = board
	end

	def gui
		puts ""
		puts ""
		puts "Type anything to get started. Type exit to quit"
		input = gets.chomp
		cont = ""
		while input.downcase != "exit" && cont != "N" 
		puts ""
		puts "Which piece are you moving?"

		input = gets.chomp
		piece = @board.names[input] #input = @board.name #rook_BL

		puts ""
		puts "To where? (type x and y coordinate)"
		puts ""
		puts "x?"
		x = gets.chomp
		puts "y?"
		y = gets.chomp
		@board.move(piece, 8, 5)

		puts "continue? (Y/N)"
		cont = gets.chomp.upcase
		end
	end

end