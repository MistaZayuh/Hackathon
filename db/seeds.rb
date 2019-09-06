@trip = Trip.count
@location = Location.count

User.create(
  email: "test@test.com",
  password: "password",
  password: "password"
)

  10.times do
    Trip.create(
      name: Faker::Color.color_name,
      user_id: 1,
      start_date: Faker::Date.forward(days: 23),
      end_date: Faker::Date.forward(days: 37)
    )
  5.times do
    Location.create(
      name: Faker::Address.city,
      days: rand(1...7)
      trip_id: rand(1...@trip)
    )
  5.times do 
    Address.create(
      street: Faker::Address.street_name,
      city: Faker::Address.city,
      state: Faker::Address.state,
      zip: Faker::Address.zip,
      location_id: rand(1...@location)
    )

puts "Data Seeded"
