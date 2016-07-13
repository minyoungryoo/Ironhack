class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)

]


homes.each do |hm|
  puts "#{hm.name} in #{hm.city}"
  puts "Price: $#{hm.price} a night"
end

prices = homes.map do |hm|
  hm.price
end


# sum = 0
# for i in 0..prices.length-1
# 	sum += prices[i]
# end
# avg_price = sum/prices.length

# puts avg_price

total = prices.reduce(0.0) do |sum, prices|
  sum + prices
end

puts "The average price is:"
puts total / prices.length

homes.each_with_index do |hm, index|
  puts "Home Number #{index + 1}: #{hm.name}"
end

# Homes in San Juan
san_juan_homes = homes.select do |hm|
  # Keep hm only if its city is "San Juan"
  hm.city == "San Juan"
end





## EXERCISE!! ##

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Min's place", "Rockville", 4, 48),
  Home.new("John's place", "New York", 2, 53),
  Home.new("Serena's place", "Paris", 1, 39),
  Home.new("Sara's place", "Guam", 3, 45),
  Home.new("Sake's place", "Tokyo", 2, 40),
  Home.new("Ariel's place", "San Juan", 4, 49)

]

def print_homes(homes)
  homes.each do | home |
  puts "#{home.name} in #{home.city}"
  puts "Price: $#{home.price} a night"
  puts "Capacity: #{home.capacity}"
  end
end

def print_cities(homes)
	puts "The list of cities are: "
	homes.each do |home|
		puts "#{home.city}"
	end
end


def price_cap(homes)
puts ("Sort by (price/capacity)?")
by = gets.chomp.downcase
puts("from (highest/lowest)?")
order = gets.chomp.downcase

sorted = homes.sort do |home1, home2|
	if by == "price" && order == "highest"
		home2.price <=> home1.price
	elsif by == "price" && order =="lowest"
		home1.price <=> home2.price
	elsif by == "capacity" && order == "highest"
		home2.capacity <=> home1.capacity
	elsif by == "capacity" && order == "lowest"
		home1.capacity <=> home2.capacity
	else
		puts "Invalid response"
	end
end


print_homes(sorted)
@finalList = sorted

end


def city(homes)

print_cities(homes)
puts("Type in a city:")

city = gets.chomp.downcase

select_city = homes.select do |home|
	home.city.downcase == city
end

print_homes(select_city)
@finalList = select_city

end


def desired_price(homes)

puts("Enter a price (integers only):")
price = gets.chomp.to_i

find_price = homes.find do |home|
	home.price.to_i == price
end

  puts "#{find_price.name} in #{find_price.city}"
  puts "Price: $#{find_price.price} a night"
  puts "Capacity: #{find_price.capacity}"

@finalList = find_price

end

def avg_price(finalList)

	if finalList.is_a?(Array)

total = finalList.reduce(0.0) do |sum, home|
	sum + home.price
	avg_price = total/finalList.length
end
	else
		avg_price = finalList.price
	end


puts "The average price of your current list is: $#{avg_price}."

end

input = "yes"

while input != "exit"

puts ("Search by ascending/decending orders of price/capacity, city, or desired price? (choose among: order, city, price)")
input = gets.chomp.downcase

if input == "order"
	price_cap(homes)
elsif input == "city"
	city(homes)
elsif input == "price"
	desired_price(homes)
else
	puts ("invalid input")
end

avg_price(@finalList)


puts ("Would you like to continue your searches? (Type \" yes \" to continue; type \"exit\" if you are done with your searches.)")
input = gets.chomp.downcase

end

