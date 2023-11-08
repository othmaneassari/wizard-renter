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
end
game = Game.new(
  name: "Mincecraft",
  category: "crafting",
  price: 35,
  age_range: 77,
  rating: 5,
  manufacturer: "Mojang Studio",
  image_url: "https://image.api.playstation.com/vulcan/img/cfn/11307x4B5WLoVoIUtdewG4uJ_YuDRTwBxQy0qP8ylgazLLc01PBxbsFG1pGOWmqhZsxnNkrU3GXbdXIowBAstzlrhtQ4LCI4.png",
  user: User.first
  #User.last 10 more
)
game.save!
puts 'Finished!'
