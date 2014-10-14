# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create([{ name: 'Planet Express' }, { business: 'Delivery' }, { location: 'New New York' }])

Manager.create([{ name: 'Hubert Farnsworth'}, { badge_number: 3010 }])

Employee.create([{ name: 'Fry' }, { badge_number: 1999 }, { position: 'Delivery Boy' }, { age: 25 }])
Employee.create([{ name: 'Leela' }, { badge_number: 2975 }, { position: 'Captain' }, { age: 39 }])
Employee.create([{ name: 'Bender' }, { badge_number: 2716057 }, { position: 'Assistant Manager of Sales' }, { age: 16000000 }])


Company.create([{ name: 'Awesome Express' }, { business: 'Delivery' }, { location: 'New New York' }])

Employee.create([{ name: 'Dwight Conrad' }, { badge_number: 2989 }, { position: 'Manager' }, { age: 25 }])
Employee.create([{ name: 'Leela' }, { badge_number: 3007 }, { position: 'Manager' }, { age: 25 }])
