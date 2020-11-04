puts "clearing database..."

Restaurant.destroy_all

puts "deleted records..."
puts "Seeding restaurants..."

10.times do
  Restaurant.create!(
    name: Faker::JapaneseMedia::OnePiece.character,
    address: Faker::JapaneseMedia::OnePiece.location,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: Restaurant::CATEGORIES.sample
  )
end
puts "Created #{Restaurant.count} restaurants..."
