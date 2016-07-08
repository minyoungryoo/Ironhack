# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



userA = User.create(name: "Micky Mouse", email: "micky@disney.command")
userB = User.create(name: "Minnie Mouse", email: "minnie@disney.com")
userC = User.create(name: "Goofy", email: "goofy@disney.com")

prodA = Product.create(title: "Chicken", description: "Meat", deadline: Date.current)
prodB = Product.create(title: "Cups", description: "Couple", deadline: Date.yesterday)

