# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(name: 'Seamus Finnegan', major: 'history')

Course.create(title: 'Life in Medieval Europe', requiredbymajor: true, meetsonfriday: false, time: '11H:0M', professor_id: '1')

Course.create(title: 'Acting 101', requiredbymajor: false, meetsonfriday: true, time: '10H:0M', professor_id: '2')

Course.create(title: 'Last Days of the British Empire', requiredbymajor: true, meetsonfriday: false, time: '14H:0M', professor_id: '3')

Course.create(title: 'The Sounds of 1980s College Radio', requiredbymajor: false, meetsonfriday: false, time: '13H:0M', professor_id: '4')

Professor.create(name: 'Sir Ulrich von Lichtenstein', department: 'History', goodreputation: true)

Professor.create(name: 'Richard Dreyfuss', department: 'Acting', goodreputation: true)

Professor.create(name: 'The Great Uncle of Margaret Thatcher', department: 'History', goodreputation: true)

Professor.create(name: 'Camper van Beethoven', department: 'Music', goodreputation: false)