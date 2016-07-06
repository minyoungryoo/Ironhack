# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ContactA = Contact.create(name: "Emily Brown", address: "123 Coco Street", phone_number: 2407778888,
	email_address: "emily@fake.com")
ContactB = Contact.create(name: "Cad Rester", address: "111 Been Street", phone_number: 2402221111,
	email_address: "cad@fake.com")
ContactC = Contact.create(name: "Lulu Lala", address: "33 Walnut Circle", phone_number: 1234567890,
	email_address: "lulu@fake.com")


# db:drop db:create db:migrate db:seed
