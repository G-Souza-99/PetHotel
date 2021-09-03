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

address = ["Avenida da Liberdade, Lisboa",
           "Rua da Junqueira, Lisboa",
           "Fontes Pereira de Melo, Lisboa",
           "Rua do Salitre, Lisboa",
           "Rua Júlio César Machado, Lisboa",
           "Rua do Sacramento, Lisboa",
           "Rua de São Bento, Lisboa",
           "Rua da Oliveira do Carmo, Porto",
           "Rua da Prata, Porto",
           "Rua dos Fanqueiros, Lisboa",
           "Estrada das Laranjeiras, Lisboa",
           "Praça Carlos Alberto, Porto",
           "Praça Marques de Pombal, Porto",
           "Praça da República, Porto",
           "Praça da Galiza, Porto",
           "Praça da Ribeira, Porto",
           "Rua Miguel Bombarda, Lisboa",
           "Praça D. João I, Porto",
           "Rua das Galerias de Paris, Porto",
           "Praça dos Restauradores, Lisboa"]

20.times do
  place = Place.new(
    user_id: user.id,
    name: Faker::Company.name,
    address: address.sample,
    description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    price: rand(50..100)
  )
  place.photo.attach(
    io: File.open(Rails.root.join("app/assets/images/house_predifined.jpg")),
    filename: 'place.jpg'
  )
  place.save
end

puts "Created Seeds! 🎆"
