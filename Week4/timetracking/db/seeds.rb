# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating three projects"
projectA = Project.create(name: "Ironhack", description: "Coding bootcamp")
projectB = Project.create(name: "Papa Johns", description: "Decent chain for pizza")
projectC = Project.create(name: "Taco Bell")
projectD = Project.create(name: "Wendys", description: "Chicken")
projectE = Project.create(name: "Building", description: "Host startups")
projectF = Project.create(name: "General Electric", description: "Some company")
projectG = Project.create(name: "Epic", description: "Healthcare")
projectH = Project.create(name: "Florida")
projectI = Project.create(name: "Maryland", description: "State")
projectJ = Project.create(name: "Cups")


puts "done"


#rails db:seed

#rails db:drop db:create db:migrate db:seed

