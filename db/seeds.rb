# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

d = Actor.create([{name: 'Danielle'},{age: 27}, {gender: "Female"}])
p = Play.create([{title: 'Twelfh Night'}, {genre: "Comedy"}])
s = Script.create([{text: 'O time, thou must untangle this, not I. It is too hard a knot for me to untie.'}])
t = TheatreCompany.create([{name: 'Royal Shakespeare Company'}, {location: 'London'}])