# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Article.destroy_all
User.destroy_all

10.times do
  email = Faker::Internet.email
  User.create(email: email, password: "azerty")
end

users = User.all

20.times do
  user = users.sample
  title = Faker::Game.title
  content = Faker::Lorem.paragraph(sentence_count: 5)
  user.articles.create(title: title, content: content)
end