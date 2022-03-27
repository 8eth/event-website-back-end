require 'faker'
puts "Clearing data..."
Party.destroy_all
Guest.destroy_all

puts "🌱 Seeding party..."
p1 = Party.create(event_name: "The wedding of Brook and Kevin")

puts "🌱 Seeding guests..."
50.times do
    Guest.create(name: Faker::FunnyName.name, attending: "false", party_id: p1.id)
end

puts "✅ Done seeding!"
