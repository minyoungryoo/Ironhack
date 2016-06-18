class Pawn
	attr_accessor :x, :y, :name
	def initialize(x, y, color, name)
		@x = x
		@y = y
		@color = color
		@name = name
	end

	def can_move?(x, y)
		if @color.downcase == "black"
			num = 7
			if @y != num && (x == @x && y == @y - 1)
				true
			elsif @y == num && (x == @x && y == @y - 2)
				true
			else
				false
			end

		else
			num = 2
			if @y != num && (x == @x && y == @y + 1)
				true
			elsif @y == num && (x == @x && y == @y + 2)
				true
			else
				false
			end
		end

	end
end
