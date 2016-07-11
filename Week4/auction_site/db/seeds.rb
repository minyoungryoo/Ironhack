# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



userA = User.create(name: "Micky Mouse", email: "micky@disney.com", password: "micky", password_confirmation: "micky")
userB = User.create(name: "Minnie Mouse", email: "minnie@disney.com", password: "minnie", password_confirmation: "minnie")
userC = User.create(name: "Goofy", email: "goofy@disney.com", password: "goofy", password_confirmation: "goofy")

prodA = Product.create(title: "Chicken", description: "Meat", deadline: Date.current, user_id: 2, min_bid: 10)
prodB = Product.create(title: "Cups", description: "Couple", deadline: Date.yesterday, user_id: 1, min_bid: 15)





