class Inventory
	attr_accessor :list
	def initialize
		@list = Hash.new{ |h,k| h[k] = [] }
	end

	def add_inventory(name, loc)
		@list[name] << loc
	end

	def call_inventory(name)
		@list[name][0]
	end

end