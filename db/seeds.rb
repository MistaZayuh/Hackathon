@trip = Trip.count
@location = Location.count

User.create(
  email: "test@test.com",
  password: "password",
  password_confirmation: "password"
)
10.times do
  trip = Trip.create(
    name: Faker::Address.country,
    user_id: 1,
    start_date: Faker::Date.forward(days: 23),
    end_date: Faker::Date.forward(days: 37)
  )
  5.times do
    location = Location.create(
      name: Faker::Address.city,
      days: rand(1...7),
      trip_id: trip.id
    )
    5.times do 
      Address.create(
      street: Faker::Address.street_name,
      city: Faker::Address.city,
      state: Faker::Address.state,
      zip: Faker::Address.zip,
      location_id: location.id
    )
    end
  end
end

puts "Data Seeded"
