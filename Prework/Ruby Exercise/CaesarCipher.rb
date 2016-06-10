# First iteration
def solve_cipher(input)
	output = String.new
  i = 0
  while i<input.length
  	num = input[i].ord - 1
  	output[i] = num.chr
  	i+=1
  end
  return output
end
puts solve_cipher("ifmmp")
# should return "hello"


# Second iteration
def solve_cipher(input, shift)
	output = String.new
  i = 0
  while i<input.length
  	if input[i].ord == 32
  		output[i] = input[i]
  	else
  	num = input[i].ord + shift
  	output[i] = num.chr
  	end
  	i+=1
  end
  return output
end
puts solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)


# Third iteration
def solve_cipher(input, shift = -3)
	output = String.new
  i = 0
  while i<input.length
  	if input[i].ord == 32
  		output[i] = input[i]
  	else
  	num = input[i].ord + shift
  	output[i] = num.chr
  	end
  	i+=1
  end
  return output
end
puts solve_cipher("p| uhdo qdph lv grqdog gxfn")





