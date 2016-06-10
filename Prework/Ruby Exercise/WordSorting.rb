def wordsorting(input)
	input = input.gsub(/\W/, ' ')
	inputarr = input.split(" ")
	i = 0
	downinputarr = Array.new
	sortedarr = Array.new
	word = Array.new
	while i<inputarr.length
	downinputarr[i] = inputarr[i].downcase
	if inputarr[i] != downinputarr[i]
	word = word.push(inputarr[i])
	end
	i+=1
	end
	sortedarrdown = downinputarr.sort
	i = 0
	while i<sortedarrdown.length
		if inputarr.include? (sortedarrdown[i])
			sortedarr[i] = sortedarrdown[i]
		else
			sortedarr[i] = word
		end
	i+=1
	end

	return sortedarr
end

puts wordsorting("Have a nice day.")
puts wordsorting("Fools fall for foolish follies.")
puts wordsorting("Ruby is a fun language!")


