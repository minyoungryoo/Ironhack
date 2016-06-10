# Code given from exercise:
class Ingredient
attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  total_price_of_milkshake = @base_price
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
   total_price_of_milkshake
end

end

#Adding samples (some given from exercise, some made on my own) to test:
nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
caramel = Ingredient.new("caramel", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
nizars_milkshake.add_ingredient(caramel)

mins_milkshake = MilkShake.new


puts nizars_milkshake.price_of_milkshake
puts mins_milkshake.price_of_milkshake


# Creating shake shop class:
class ShakeShop
	def initialize
		@milkshakes = []

	end

	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end

	def checkout_milkshake
		total = 0
		@milkshakes.each do |milkshake|
			total += milkshake.price_of_milkshake
		end
		total
	end
end

#Testing to see if the shake shop class works:
my_shop = ShakeShop.new
my_shop.add_milkshake(nizars_milkshake)
my_shop.add_milkshake(mins_milkshake)

puts my_shop.checkout_milkshake


