# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Creating 10 fake games and 2 users...'
Game.destroy_all
User.destroy_all
2.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  user.save!

  10.times do
    game = Game.new(
      name:    Faker::Game.title,
      category: Faker::Game.genre,
      price: rand(20..70),
      age_range: rand(7..77),
      rating:  rand(0..5),
      manufacturer: Faker::Company.name,
      user: user
    )
    game.save!
  end
end
puts 'Finished!'
