# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning the db..."
Flat.destroy_all

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

puts "Creating 4 flats..."

4.times do
  flat = Flat.create!(
    name: Faker::Beer.brand,
    address: Faker::Address.street_address,
    description: Faker::Quote.yoda,
    price_per_night: rand(50..500),
    number_of_guests: rand(1..6)
  )
  puts "Flat with id #{flat.id} was created"
end

puts "All done!"
