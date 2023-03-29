require 'faker'
puts "Seeding..."

# Create random events
10.times do
  Event.create!(
    name: Faker::Lorem.sentence(word_count: 3),
    date: Faker::Time.between_dates(from: Date.today, to: Date.today + 30),
    location: Faker::Address.city,
    price: Faker::Commerce.price(range: 10..100)
  )
end

# Create random Users
20.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8)
  )
end


Event.all.each do |event|
  # Create a random number of users to buy tickets
  num_users = rand(1..10)

  # Create a random quantity of tickets for each user
  User.all.sample(num_users).each do |user|
    quantity = rand(1..5)

    Ticket.create!(
      user: user,
      event: event,
      quantity: quantity
    )
  end
end

puts "Done seeding"
