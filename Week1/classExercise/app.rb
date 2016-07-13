require_relative("lib/spaceship.rb")   #linking to another file to let ruby know that next few lines come from another file defining class
require_relative("lib/car.rb")
require_relative("lib/lightspeed_ship.rb")


first_spaceship = Spaceship.new("Woooshhh", 50)
first_spaceship.fly
first_spaceship.travel("Saturn")
first_spaceship.travel("Jupiter")

p first_spaceship.list_of_planets

second_spaceship = Spaceship.new("Brrrrrrm", 100)
second_spaceship.fly
second_spaceship.travel("Mars")
second_spaceship.travel("Pluto")

p second_spaceship.list_of_planets

Car1 = Car.new("Broom")
Car1.sound

Car2 = Car.new("BROOOOOOM")
Car2.sound

puts "======================="

lightspeed_ship = LightspeedShip.new("Bzzzzt",20)
lightspeed_ship.fly
lightspeed_ship.travel("Black Hole")