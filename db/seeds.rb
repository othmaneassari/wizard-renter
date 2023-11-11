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
  name: "Minecraft",
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

game = Game.new(
  name: "Assassin's Creed",
  category: "action-adventure",
  price: 38,
  age_range: 13,
  rating: 5,
  manufacturer: "Ubisoft Montreal",
  image_url: "https://staticctf.ubisoft.com/J3yJr34U2pZ2Ieem48Dwy9uqj5PNUQTn/1kTpXYUBWXDy88rGA1Vo8p/878003800ba9672751c80f9a7e205b60/AC1_game_overview_4.jpg",
  user: User.first
)
game.save!
game = Game.new(
  name: "Tomb Raider",
  category: "action-adventure",
  price: 36,
  age_range: 18,
  rating: 5,
  manufacturer: "Core Design",
  image_url: "https://www.syfy.com/sites/syfy/files/styles/hero_image__large__computer__alt_1_5x/public/2021/03/lara-croft-tomb-raider-25th-via-square-enix.jpg",
  user: User.first
)
game.save!
game = Game.new(
  name: "The Last of Us",
  category: "action-adventure",
  price: 38,
  age_range: 18,
  rating: 5,
  manufacturer: "Naughty Dog",
  image_url: "https://cf.geekdo-images.com/GZrXe6CrBAOLlwoh0-VSPg__imagepagezoom/img/Ejc65l65Qr74w4x_ycMqVc88vSI=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic5684748.jpg",
  user: User.first
)
game.save!
game = Game.new(
  name: "The Witcher III: Wild Hunt",
  category: "action role-playing",
  price: 40,
  age_range: 16,
  rating: 5,
  manufacturer: "CD Projekt Red",
  image_url: "https://hollywoodmetal.com/wp-content/uploads/The-Witcher-3-Wild-Hunt-1.jpg",
  user: User.first
)
game.save!
game = Game.new(
  name: "FIFA 23",
  category: "action sports",
  price: 33,
  age_range: 10,
  rating: 3,
  manufacturer: "EA Sports",
  image_url: "https://www.metacritic.com/a/img/catalog/provider/6/12/6-1-881130-52.jpg",
  user: User.first
)
game.save!
game = Game.new(
  name: "NBA 2K24",
  category: "action sports",
  price: 33,
  age_range: 10,
  rating: 3,
  manufacturer: "Visual Concepts",
  image_url: "https://gaming-cdn.com/images/news/articles/2817/cover/1000x563/nba-2k24-has-already-become-the-second-lowest-rated-game-in-history-on-steam-cover650026c73aef9.jpg",
  user: User.first
)
game.save!
game = Game.new(
  name: "Ghost of Tsushima",
  category: "action-adventure",
  price: 35,
  age_range: 18,
  rating: 5,
  manufacturer: "Sucker Punch Productions",
  image_url: "https://bloximages.chicago2.vip.townnews.com/utdailybeacon.com/content/tncms/assets/v3/editorial/9/b9/9b996e16-e3c1-11ea-aeb2-ebba0f002387/5f3fe5f85884c.image.jpg?resize=1024%2C1024",
  user: User.first
)
game.save!
game = Game.new(
  name: "God of War: Ragnarok",
  category: "action-adventure",
  price: 37,
  age_range: 18,
  rating: 5,
  manufacturer: "Santa Monica Studio",
  image_url: "https://static0.gamerantimages.com/wordpress/wp-content/uploads/2022/05/god-of-war-ragnarok-1.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5",
  user: User.first
)
game.save!
game = Game.new(
  name: "Yakuza 0",
  category: "action-adventure",
  price: 34,
  age_range: 16,
  rating: 5,
  manufacturer: "Ryu Ga Gotoku Studio",
  image_url: "https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/35f0a44eaa1c53f8dac1ed54a587eee6.png",
  user: User.first
)
game.save!
game = Game.new(
  name: "Monopoly: Lord of the Rings",
  category: "strategy",
  price: 38,
  age_range: 8,
  rating: 4,
  manufacturer: "Hasbro",
  image_url: "https://m.media-amazon.com/images/I/81d7LiO88EL._AC_SL1500_.jpg",
  user: User.last
  #User.last 10 more
)
game.save!
game = Game.new(
  name: "Risk: Game of Thrones",
  category: "strategy-conquest",
  price: 38,
  age_range: 14,
  rating: 4,
  manufacturer: "Usaopoly",
  image_url: "https://m.media-amazon.com/images/I/81ZWiSY1hsL._AC_SL1500_.jpg",
  user: User.last
)
game.save!
game = Game.new(
  name: "Battleship",
  category: "strategy-simulation",
  price: 33,
  age_range: 7,
  rating: 5,
  manufacturer: "Ubisoft",
  image_url: "https://staticctf.ubisoft.com/J3yJr34U2pZ2Ieem48Dwy9uqj5PNUQTn/5UCI3AbvqSJ8QCnNKdGFfs/a793c17ba309eeb60d90f0acb3b7dbc7/-BS-_Feature_-_4.jpg",
  user: User.last
)
game.save!
game = Game.new(
  name: "Chess",
  category: "strategy-conquest",
  price: 35,
  age_range: 7,
  rating: 5,
  manufacturer: "Naef Switzerland",
  image_url: "https://tryengineering.org/wp-content/uploads/bigstock-208614778-1024x683.jpg",
  user: User.last
)
game.save!
game = Game.new(
  name: "Pokemon",
  category: "role-playing",
  price: 33,
  age_range: 7,
  rating: 5,
  manufacturer: "Game Freak Inc.",
  image_url: "https://images.nintendolife.com/e64332ff10fd3/best-pokemon-games.large.jpg",
  user: User.last
)
game.save!
game = Game.new(
  name: "The Legend of Zelda: Tears of the Kingdom",
  category: "action-adventure",
  price: 38,
  age_range: 10,
  rating: 5,
  manufacturer: "Nintendo",
  image_url: "https://imageio.forbes.com/specials-images/imageserve/6322129e876c6dd61a451586/zelda-tears-of-the-kingdom-715x400/960x0.png?format=png&width=1440",
  user: User.last
)
game.save!
game = Game.new(
  name: "Hogwarts Legacy",
  category: "action role-playing",
  price: 37,
  age_range: 12,
  rating: 4,
  manufacturer: "Avalanche Software",
  image_url: "https://i0.wp.com/onemoregame.ph/wp-content/uploads/2023/02/hogwarts-legacy-key-art-2.jpg?fit=1000%2C538&ssl=1",
  user: User.last
)
game.save!
game = Game.new(
  name: "Dragon Ball FighterZ",
  category: "fighting game",
  price: 35,
  age_range: 12,
  rating: 5,
  manufacturer: "Arc System Works",
  image_url: "https://blog.bestbuy.ca/wp-content/uploads/2018/02/Dragonball-Fighterz.jpg",
  user: User.last
)
game.save!
game = Game.new(
  name: "Catan",
  category: "building-trading",
  price: 35,
  age_range: 10,
  rating: 5,
  manufacturer: "Klaus Teuber",
  image_url: "https://www.boardgamebliss.com/cdn/shop/products/pic2419375_600x.jpg?v=1578609010",
  user: User.last
)
game.save!
game = Game.new(
  name: "Ticket to Ride",
  category: "rail adventure",
  price: 36,
  age_range: 5,
  rating: 5,
  manufacturer: "Alan R. Moon",
  image_url: "https://xxboxnews.blob.core.windows.net/prod/sites/2/2019/12/keyart_ttr.jpg",
  user: User.last
)
game.save!
puts 'Finished!'
