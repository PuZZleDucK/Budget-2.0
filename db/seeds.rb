# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users = User.create([
#   {first_name: "Ben", last_name: "Minerds", email: "ben@gmail.com", password: "123456"},
#   {first_name: "Bill", last_name: "Minerds", email: "bill@gmail.com", password: "123456"}
#   ])
User.destroy_all
users = User.create!([
  {first_name: "Davis", last_name: "Hong", email: "davislf2.net@gmail.com", password: "123456"},
  {first_name: "Luke", last_name: "McDonald", email: "mcdonaldluke6@gmail.com", password: "123456"},
  {first_name: "Dinda", last_name: "P", email: "dinda.pradi@gmail.com", password: "123456"},
  {first_name: "Ben", last_name: "Minerds", email: "puzzleduck@gmail.com", password: "123456"},
  {first_name: "Anne", last_name: "Laing", email: "annelaing@hotmail.com", password: "123456"},
  {first_name: "Brendan", last_name: "Ansell", email: "ansellbr@gmail.com", password: "123456"},
  {first_name: "Chris", last_name: "Marmo", email: "chris@papergiant.net", password: "123456"},
  {first_name: "Saikumar", last_name: "Beerà", email: "saikumar.beera@gmail.com", password: "123456"},
  {first_name: "Robert", last_name: "Fordyce", email: "robert.fordyce@unimelb.edu.au", password: "123456"}
])
bill = users[0]
ben = users[1]
Idea.destroy_all
ideas = ben.ideas.create!([
  {content: "bens idea"}
  ])
first_idea = ideas[0]
Support.destroy_all
bill_supports_first = bill.supports.create!(idea: first_idea)
