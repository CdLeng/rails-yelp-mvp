require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts 'Cleaning database..'
Restaurant.destroy_all

puts 'Creating restaurants'

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample(1).join('')
  )
  puts " #{restaurant.name}, #{restaurant.id}, #{restaurant.address},
         #{restaurant.phone_number}, #{restaurant.category}"
end
