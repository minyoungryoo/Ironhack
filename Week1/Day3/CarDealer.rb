class CarDealer
	def initialize(inventory)
		@inventory = inventory
	end 

	def cars(key)
		puts @inventory[key.to_sym]
	end
end

