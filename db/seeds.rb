require 'faker'

5.times do
  User.create!(
    name: Faker::Superhero.name,
    bio: Faker::TvShows::SouthPark.quote,
    category: "Star"
  )
  User.create!(
    name: Faker::Name.unique.name,
    bio: "customer bio",
    category: "Customer"
  )
  Service.create!(
    title: "service title",
    description: "service description",
    price: rand(5..100)
  )
end
