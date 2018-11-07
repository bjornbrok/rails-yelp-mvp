require 'faker'

Restaurant.destroy_all
5.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.phone_number
    )
  restaurant.save!
end
puts 'added 5 fake restasurants'
