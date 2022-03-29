require 'faker'
puts "Clearing data..."
Party.destroy_all
Guest.destroy_all

puts "🌱 Seeding party..."
p1 = Party.create(event_name: "The wedding of Brook and Kevin")

puts "🌱 Seeding guests..."
50.times do
    Guest.create(name: Faker::FunnyName.name, attending: "true", party_id: p1.id)
end

puts "🌱 Seeding pictures..."
6.times do
    Picture.create(caption: "picture of #{Faker::FunnyName.name}", img_link: "https://i.picsum.photos/id/782/200/300.jpg?hmac=VWiFPQfyEC9R-Cj6iOqYU6jCf23goz4cBkBc28drqE0", party_id: p1.id)
end


puts "✅ Done seeding!"
