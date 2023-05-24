require 'faker'

Restaurant.destroy_all

categories = %w[chinese italian japanese french belgian]

21.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::JapaneseMedia::OnePiece.location,
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories.sample
  )
end
