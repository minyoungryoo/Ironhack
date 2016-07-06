# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating projects"

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

entryA = TimeEntry.create(hours: 1, minutes: 30, date: Date.yesterday, comments: "first entry", project_id: projectA.id)
entryB = TimeEntry.create(hours: 3, minutes: 0, date: Time.now, comments: "second entry", project_id: projectB.id)
entryC = TimeEntry.create(hours: 0, minutes: 45, date: Date.yesterday - 1.day, comments: "third entry", project_id: projectC.id)
entryD = TimeEntry.create(hours: 2, minutes: 30, date: Date.yesterday - 1.month, comments: "fourth entry", project_id: projectD.id)
entryE = TimeEntry.create(hours: 3, minutes: 0, date: Date.yesterday - 1.year, comments: "lala entry", project_id: projectE.id)
entryF = TimeEntry.create(hours: 5, minutes: 30, date: Time.now - 1.month, comments: "lulu entry", project_id: projectF.id)
entryG = TimeEntry.create(hours: 1, minutes: 30, date: Date.yesterday, comments: "hohoho entry", project_id: projectG.id)
entryH = TimeEntry.create(hours: 1, minutes: 45, date: Time.now, comments: "pizza entry", project_id: projectH.id)
entryI = TimeEntry.create(hours: 9, minutes: 30, date: Date.yesterday, comments: "phone entry", project_id: projectI.id)
entryJ = TimeEntry.create(hours: 1, minutes: 30, date: Time.now - 1.year - 1.month, comments: "hair entry", project_id: projectJ.id)


puts "done"





#rails db:seed

#rails db:drop db:create db:migrate db:seed

