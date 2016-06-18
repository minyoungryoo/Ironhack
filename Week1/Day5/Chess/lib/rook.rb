class Rook
	attr_accessor :x, :y, :name
	def initialize(x, y, color, name)
		@x = x
		@y = y 
		@color = color
		@name = name
	end

	def can_move?(x, y)
		if x == @x || y == @y
			true
		else
			false
		end
	end
end