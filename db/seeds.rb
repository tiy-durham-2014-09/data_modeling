# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mediterranean = Property.create(name: "Mediterranean", color_group: "dark_purple", base_rent: "2")
baltic = Property.create(name: "Baltic", color_group: "dark_purple", base_rent: "4")
Property.create(name: "Oriental", color_group: "light_blue", base_rent: "6")
Property.create(name: "Vermont", color_group: "light_blue", base_rent: "6")
Property.create(name: "Connecticut", color_group: "light_blue", base_rent: "8")


vance = Player.create(name: "Vance")

#create deeds

Deed.create(property: mediterranean, player: vance, houses: 0)
Deed.create(property: baltic, player: vance, houses: 0)
