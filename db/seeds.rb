# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fake_brewers = ["rocky ridge", "nowhere brews", "something else", "big dog beer co."]
fake_title = ["mean gene", "angry abbey", "scrumtrulescent", "commiseration", "olde no. 4"]

fake_cheesemakers = ["smithers cheees'n'co.", "cowbell creamery", "goatitude pastures", nil]
fake_cheeses = ["belltower", "tupelo", "clothbound", "l'air"]

25.times do
  BeerLog.create(brewer: (fake_brewers.sample),
                 title: (fake_title.sample),
                 beer_style_id: (rand(20)),
                 rating: (rand(5))
                 )
end

25.times do
  BeerLog.create(cheesemaker: (fake_cheesemakers.sample),
                 title: (fake_cheeses.sample),
                 cheese_style_id: (rand(20)),
                 rating: (rand(5))
                 )
end