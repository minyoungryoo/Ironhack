class Board
	attr_accessor :names, :name
	def initialize
	    @pieces = Array.new(9) {Array.new(9)}
		@spacelimit = [8,8]
		@names = Hash.new
	end

	def add_piece(piece)
		@x = piece.x
		@y = piece.y
		@name = piece.name
		@pieces[@x][@y] = piece
		@names[@name] = piece
		# p "#{@name}: #{@names}"
		# move(@names[@name], 2, 4)
	end

	def can_move? (start, destination)
		if start == destination
			puts "invalid move"
		elsif destination[0] > @spacelimit[0] || destination[1] > @spacelimit[0]
			puts "invalid move"
		elsif start.nil?
			puts "no piece to move"
		else
			true
		end

		#check for staying in same position
		#moving off the board
		#check that there's a piece in start position
	end

	def move(piece, new_x, new_y)
		if piece.can_move?(new_x, new_y) == true && can_move?([@x,@y] ,[new_x, new_y]) == true
			piece.x = new_x 
			piece.y = new_y
			puts "Your new position is [#{piece.x}, #{piece.y}]"
		else
			puts "Invalid move"
		end
		
	end


end