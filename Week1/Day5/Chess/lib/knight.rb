class Knight
	attr_accessor :x, :y, :name
	def initialize(x, y, color, name)
		@x = x
		@y = y
		@color = color
		@name = name
	end

	def can_move?(x, y)
		xtolarray1 = [@x - 1, @x + 1]
		xtolarray2 = [@x - 2, @x + 2]
		ytolarray1 = [@y - 1, @y + 1]
		ytolarray2 = [@y - 2, @y + 2]
		if xtolarray2.any? {|x_dum| x_dum == x} && ytolarray1.any? {|y_dum| y_dum == y}
			true
		elsif xtolarray1.any? {|x_dum| x_dum == x} && ytolarray2.any? {|y_dum| y_dum == y}
			true
		else
			false
		end
	end
end
