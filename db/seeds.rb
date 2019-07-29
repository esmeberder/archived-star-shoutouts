require 'faker'

5.times do
  s = User.create!(
    name: Faker::Superhero.name,
    bio: Faker::TvShows::SouthPark.quote,
    category: "Star"
  )
  User.create!(
    name: Faker::Name.unique.name,
    bio: "customer bio",
    category: "Customer"
  )
  2.times do
    Service.create!(
      title: "service title",
      description: "service description",
      price: rand(5..100),
      user_id: s.id
    )
  end
end

puts "created #{User.count} users"
