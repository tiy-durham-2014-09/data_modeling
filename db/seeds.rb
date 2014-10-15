require "faker"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Portfolio.delete_all
Profile.delete_all
Stock.delete_all

5.times do

  f_name = Faker::Name.name
  f_username = Faker::Internet.user_name(f_name)

  categories = ["growth","value","index"]
  buzz_words = ["solar","energy","emerging","china","bear","bull","long","short","fixed-income","high-yield","retail","classic","bio-pharma"]
  f_portfolio_name = buzz_words.shuffle.sample(2) * " "

  user = User.create!(name: f_name,
                      username: f_username,
                      birthday: Faker::Date.between(150.years.ago, 18.years.ago))

  portfolio = Portfolio.create!(user_id: user.id,
                    name: f_portfolio_name)

  Profile.create!(description: Faker::Company.catch_phrase,
                  category: categories.sample,
                  profileable_id: portfolio.id,
                  profileable_type: "Portfolio")

  rand(1..5).times do
    company = Faker::Company.name
    ticker = ("A".."Z").to_a.sample(rand(3..4)).join

    stock = Stock.create!(portfolio_id: portfolio.id,
                          name: company,
                          ticker: ticker,
                          price: rand(100))

    Profile.create!(description: Faker::Company.catch_phrase,
                    category: categories.sample,
                    profileable_id: stock.id,
                    profileable_type: "Stock")

  end

end