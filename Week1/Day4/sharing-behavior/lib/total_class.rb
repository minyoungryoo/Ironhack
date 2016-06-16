class Total_class

	def tot_num_wheels(vehicle)
		# sum = 0
		# vehicle.each do |vehicle|
		# sum += vehicle.num_wheels 
		# end
		# puts sum

		total = vehicle.reduce(0) do |sum, vehicle|
			sum + vehicle.num_wheels
		end
		puts total
	end

	def all_noises(vehicle)
		vehicle.each do |vehicle|
			puts vehicle.sound
		end
	end
end