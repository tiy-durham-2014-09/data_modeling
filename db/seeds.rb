# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


d = Dispatcher.new
d.name = "Mike"
d.save


Patient.create(name: 'John Doe', gender: 'male', location: 'Room 133', destination: 'Endoscopy Dept', date_of_birth: 1976-05-13)
Patient.save
Patient.create(name: 'Jane Doe', gender: 'female', location: 'Room 253', destination: 'Ultrasound Dept', date_of_birth: 1986-08-24)
Patient.save
Patient.create(name: 'Some Guy', gender: 'male', location: 'Room 174', destination: 'Xray Dept', date_of_birth: 1991-01-11)
Patient.save
Patient.create(name: 'Some Girl', gender: 'female', location: 'Room 302', destination: 'Emergency Dept', date_of_birth: 1982-04-20)
Patient.save

Transporter.create(name: 'Scuba Steve', patient: patients.first)
Transporter.save

Transporter.create(name: 'Scuba Sam', patient: 'Some Girl')
Transporter.save
