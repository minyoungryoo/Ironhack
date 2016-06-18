class Bishop
	attr_accessor :x, :y, :name
	def initialize(x, y, color, name)
		@x = x
		@y = y
		@color = color
		@name = name
	end

	def can_move?(x, y)
		dif = @x - @y
		sum = @x + @y
		if x - y == dif
			true
		elsif x + y == sum
			true
		else
			false
		end
	end

end