require_relative("lib/spaceship.rb")   #linking to another file to let ruby know that next few lines come from another file defining class
require_relative("lib/car.rb")


first_spaceship = Spaceship.new("Woooshhh", 50)
first_spaceship.fly

second_spaceship = Spaceship.new("Brrrrrrm", 100)
second_spaceship.fly

Car1 = Car.new
Car1.sound