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
  {content: "bens idea1"},
  {content: "bens idea2"},
  {content: "bens idea3"},
  {content: "bens idea4"}
])
ideas += dinda.ideas.create!([
  {content: "dindas idea1"},
  {content: "dindas idea2"},
  {content: "dindas idea3"},
  {content: "dindas idea4"}
])
ideas += luke.ideas.create!([
  {content: "lukes idea1"},
  {content: "lukes idea2"},
  {content: "lukes idea3"},
  {content: "lukes idea4"}
])
ideas += davis.ideas.create!([
  {content: "davis's idea1"},
  {content: "davis's idea2"},
  {content: "davis's idea3"},
  {content: "davis's idea4"}
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
