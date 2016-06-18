# class Fixnum
# 	def some_weird_stuff

# 	end
# end

# 5.some_weird_stuff

words = ["pizza", "steak", "cookies", "orange"]
words.each do | word |
	define_method word do 
		puts word
	end
end

pizza
steak
cookies
orange
