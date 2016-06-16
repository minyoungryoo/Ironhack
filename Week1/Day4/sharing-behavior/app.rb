# app.rb

# require_relative("lib/caffeine_consumer.rb")
# require_relative("lib/payable.rb")
# require_relative("lib/designer.rb")
# require_relative("lib/programmer.rb")



# the_designer = Designer.new
# the_designer.design_things

# puts ""

# the_programmer = Programmer.new
# the_programmer.program




require_relative("lib/boats.rb")
require_relative("lib/airplanes.rb")
require_relative("lib/cars.rb")
require_relative("lib/motorcycles.rb")
require_relative("lib/total_class.rb")

vehicles = [Boat.new, Airplane.new, Car.new, Motorcycle.new]
first_sum = Total_class.new
first_sum.all_noises(vehicles)
first_sum.tot_num_wheels(vehicles)
# puts vehicles[2].num_wheels.to_i + vehicles[1].num_wheels.to_i
# vehicles[2].num_wheels.class

		# vehicles.each do |vehicle|
		# 	vehicle.num_wheels + 1
		# end
 	# 	puts vehicles