require "faker"

# BookAuthor.delete_all
# BookFormat.delete_all
# Book.delete_all
# Format.delete_all
# Author.delete_all
# Publisher.delete_all

formats = ['print', 'audio', 'epub']

10.times do

  n = Faker::Name.name

  a = Author.create!(name: n, deceased_date: Faker::Date.between(150.years.ago, 20.years.ago))

  p = Publisher.create!(name: Faker::Company.name, address: Faker::Address.to_s)

  f = Format.create!(name: formats.sample)

  b = Book.create!(title: Faker::Company.catch_phrase, publication_date: Faker::Date.between(100.years.ago, 0.years.ago))

  ba = BookAuthor.create!(book: b, author: a)

  bf = BookFormat.create!(book: b, format: f)

end