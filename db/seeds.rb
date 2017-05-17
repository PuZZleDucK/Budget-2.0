# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

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
99.times do
  User.create!({first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123456"})
end
davis = users[0]
luke = users[1]
dinda = users[2]
ben = users[3]

Idea.destroy_all
ideas = ben.ideas.create!([
  {content: "The budget mentions 'upgrading a record number of Victorian schools'. Which schools are being upgraded? What kind of upgrades?"},
  {content: "Are any new primary schools being planned in the outer western suburbs?"},
  {content: "Are there circumstances in which a family might be worse off in the current budget?"},
  {content: "How will the 'Excellence in Teacher Education reforms' raise the quality of teacher education and training"}
])
ideas += dinda.ideas.create!([
  {content: "$685 million investment breakdown graph link: http::/www.understanding-the-budget.org"},
  {content: "What does 'modernising schools' actualy mean?"},
  {content: "The minister mentions finding 'best and brightest teachers', how does the budget address the issue of finding the best talent to teach our children"},
  {content: "I like the idea of pairing graduates with more experienced teachers... Could we use this model elsewhere?"}
])
ideas += luke.ideas.create!([
  {content: "The 2017 budget mentions building and expanding a further 13 schools. Which schools are being upgraded?"},
  {content: "Does all of the $44.4 million funding for special schoolscome from the education budget?"},
  {content: "How will the 'Turnaround Teams' help underperforming schools. What will be the metrics of success in a program?"},
  {content: "Where can I find out more about the 'Professional Learning Communities'"}
])
ideas += davis.ideas.create!([
  {content: "What new schools will be completed in 2018?"},
  {content: "How does the government expect to save money with relocatable classrooms?"},
  {content: "Will 25 teachers be enough for 'Specialist Teaching Teams' to cover the country"},
  {content: "Could moving teachers around acualy reduce quality of teaching"}
])

ben_idea = ideas[0]
dinda_idea = ideas[5]
luke_idea = ideas[9]
davis_idea = ideas[13]

Support.destroy_all
ben.supports.create!([
  {idea_id: luke_idea.id},
  {idea_id: davis_idea.id},
  {idea_id: ben_idea.id},
  {idea_id: dinda_idea.id}
])
luke.supports.create!(idea_id: dinda_idea.id)
dinda.supports.create!(idea_id: dinda_idea.id)
davis.supports.create!(idea_id: dinda_idea.id)
