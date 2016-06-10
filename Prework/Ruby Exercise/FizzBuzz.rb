#iteration 1

i=1
while i<101
	if i%3 == 0 && i%5 == 0
		puts "FizzBuzz"
	elsif i%3 == 0 
		puts "Fizz"
	elsif i%5 == 0
		puts "Buzz"
	else
		puts i
	end
	i+=1
end

#iteration 2

num = 1..100
num.each do |i|
	if i%3 == 0 && i%5 == 0
		puts "FizzBuzz"
	elsif i%3 == 0 
		puts "Fizz"
	elsif i%5 == 0
		puts "Buzz"
	else
		puts i
	end
end

#iteration 3

i=1
output = ""
while i<101
	j = i.to_s
	if i%3 == 0 && i%5 == 0
		output = "FizzBuzz"
	elsif i%3 == 0 
		output =  "Fizz"
	elsif i%5 == 0
		output = "Buzz"
	else
		output = j
	end

	if j[0]=="1" && output == j
		output = "Bang"
	elsif j[0] == "1"
		output += "Bang"
	end

	i+=1
	puts output
end

#iteration 4

i=1
while i<101
	output = ""
	j = i.to_s
	if i%3 == 0
		output += "Fizz"
	end

	if i%5 == 0
		output += "Buzz"
	end

	if j[0] == "1"
		output += "Bang"
	end

	if output == ""
		output = i
	end
	puts output
	i+=1
end


