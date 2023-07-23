# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!([
  { email: 'enzoquiomaster@gmail.com',
    password: '123456'
  }
])
9.times do
  Publication.create!([
    { image: 'https://picsum.photos/id/' + rand(1..100).to_s + '/200',
      title: Faker::Lorem.sentence(word_count: 5),
      description: Faker::Lorem.paragraphs(number:2),
      user_id: 1
    }
  ])
end
