# put data in the DB that i can use in my app
puts "Cleaning the DB..."
Pet.destroy_all

puts "Creating pets..."
20.times do
  Pet.create!(
    name: Faker::Creature::Horse.name,
    location: Faker::Address.street_address,
    found_on: Date.today - rand(1..10),
    species: Pet::SPECIES.sample
  )
end
puts "... created #{Pet.count}"
