require_relative("CarDealer.rb")

Everything = {
	:Ford => ["Fiesta", "Mustang"],
	:Honda => ["Civic", "CR-V"]
}

car_dealer = CarDealer.new(Everything)

car_dealer.cars("Ford")
