# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying seeds...."
Order.destroy_all
Place.destroy_all
User.destroy_all

user = User.create(
  email: "test@test.com",
  password: "123456"
)

20.times do
  place = Place.create!(
    user_id: user.id,
    name: Faker::Company.name,
    address: Faker::Address.street_name
  )
  place.photo.attach(
    io: File.open(Rails.root.join("app/assets/images/house_predifined.jpg")),
    filename: 'place.jpg'
  )
end

puts "Created Seeds! 🎆"
