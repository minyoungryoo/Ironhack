class StringCalculator
	def add(numbers_string)
		# split = numbers_string.split(/\W+/)
		# sum = 0
		# split.each do |strnum|
		# 	sum += strnum.to_i
		# end
		# sum

		# alternative:
		# sum = 0
		# numbers_string.tr("^0-9", ",").split(",").each do |strnum|
		# sum += strnum.to_i
		# 	end
		# 	sum


		# another alternative:
		numbers_string.tr("^0-9", ",").split(",").reduce(0) do |sum, strnum|
		sum + strnum.to_i
			end

	end
end