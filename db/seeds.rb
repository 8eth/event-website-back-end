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
# 5.times do
#     Picture.create(caption: "#{Faker::FunnyName.name}", img_link: "https://i.picsum.photos/id/782/200/300.jpg?hmac=VWiFPQfyEC9R-Cj6iOqYU6jCf23goz4cBkBc28drqE0", party_id: p1.id)
# end

Picture.create(caption: "cake", img_link: "https://images.pexels.com/photos/1702373/pexels-photo-1702373.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", party_id: p1.id)
Picture.create(caption: "ceremony", img_link: "https://images.pexels.com/photos/2291462/pexels-photo-2291462.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", party_id: p1.id)
Picture.create(caption: "dinner", img_link: "https://images.pexels.com/photos/1045541/pexels-photo-1045541.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", party_id: p1.id)
Picture.create(caption: "rings", img_link: "https://images.pexels.com/photos/2219195/pexels-photo-2219195.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", party_id: p1.id)
Picture.create(caption: "flowers", img_link: "https://images.pexels.com/photos/306066/pexels-photo-306066.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", party_id: p1.id)




puts "✅ Done seeding!"
