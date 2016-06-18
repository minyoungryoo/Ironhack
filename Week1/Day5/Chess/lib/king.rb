class King
	attr_accessor :x, :y, :name
	def initialize(x, y, color, name)
		@x = x
		@y = y
		@color = color
		@name = name
	end

	def can_move?(x, y)
		xtolarray = [@x - 1, @x, @x + 1]
		ytolarray = [@y - 1, @y, @y + 1]
		if xtolarray.any? {|x_dum| x_dum == x} && ytolarray.any? {|y_dum| y_dum == y}
			true
		else
			false
		end
	end


end
