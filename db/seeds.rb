# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Region.delete_all
Body.delete_all
Ship.delete_all
CrewMember.delete_all
SpaceBarnacle.delete_all

@regions = []

region_names = ['Region X', 'Nebular Deeps', 'Lumpy Zone']
region_names.each do |r|
  region = Region.create!(name: r)
  @regions << region
end

@stars = []

@regions.each do |r|
  rand(2..5).times do
    star = r.bodies.create!(name: ['HIP - ', 'Gliese ', 'DC-'].sample + rand(1000..9999).to_s, size: ['Supergiant', 'Middling Sun', 'Crescent Star', 'Tiny Dwarf Star'].sample )
    @stars << star
  end
end

@planets = []

@stars.each do |s|
  rand(0..3).times do
    planet = s.sub_bodies.create!(name: s.name + "-" + ['A', 'B', 'C', 'D', 'E', 'F'].sample, size: ['Cloud Giant','Chunk of Metal','Bushy Mass','Crystal Sphere','Boring-class Planet','Cyberstation'].sample)
    @planets << planet
  end
end

@ships = []

5.times do |s|
  ship = Ship.create(name: 'MWASESBC ' + ['Hermes','Jolly Roger','Enterprise','Timedate Falcon','Ship of the Imagination','Polaris','Icarus','Blender','Shoebox'].sample + " " + rand(10..99).to_s)
  @ships << ship
end

# @captains = []
#
# @ships.each do |s|
#   captain = s.captain.create(name: 'Pickard Clone ' + rand(1..100))
# end