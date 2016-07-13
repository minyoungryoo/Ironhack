
#Exercise: each

# classmates = ["Rachel","Jonathan","Andres"]

# classmates.each do |classmates|
# 	puts "Good morning #{classmates}!"
# end

# Map

# foods = ["Pizza", "french fries", "mac and cheese"]

# lengths = foods.map do |dish|
# 		dish.length
# 	end

# lowercased = foods.map do |dish|
# 	dish.downcase
# end

# p lengths[0]
# p lowercased


city_names = ["north carolina", "new york", "barcelona", "miami"]

proper = city_names.map do |city|
	cap = Array.new
	split = city.split(" ")
	 i=0
	 while i<split.length  
	  cap.push(split[i].capitalize)
	  i+=1
	end
	 cap.join(" ")
end

 p proper