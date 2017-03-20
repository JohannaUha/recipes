# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Level.create([{ name: 'easy'}, { name: 'mediocre'}, { name: 'hard'}])
Category.create([{ name: 'pasta', description: 'Pasta is from Italy and its really good not only with tomato or cream sauce. Lets see what our users come up with'},
                {name: 'rice', description: 'Depending on the type of rice you can create lots of different dishes!'},
                {name: 'pizza', description: 'Why are pizzaz usually round. Lets get creative and see how we can change the traditions with pizza!'}])

User.create([{ username: 'uha'}, {password: 'uha'}, {password_confirmation: 'uha'}, {description: 'Not really into cooking but likes good food'}])
User.create([{ username: 'peter'}, {password: 'peter'}, {password_confirmation: 'peter'}, {description: 'Likes to experiment, needs to eat more!'}])