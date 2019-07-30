require 'faker'

Service.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

5.times do
  s = User.create!(
    name: Faker::Superhero.name,
    bio: Faker::TvShows::SouthPark.quote,
    star: true
  )
  User.create!(
    name: Faker::Name.unique.name,
    bio: "customer bio",
    star: false
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
