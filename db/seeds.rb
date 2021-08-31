# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying seeds...."
Place.destroy_all

20.times do
  Place.create!(
    user_id: 1,
    name: Faker::Company.name,
    address: Faker::Address.street_name
  )
end

puts "Created Seeds! 🎆"
