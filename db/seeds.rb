Flat.delete_all



8.times do
  new_name = Faker::Marketing.buzzwords
  new_address = Faker::Address.street_address
  new_description = Faker::Hacker.say_something_smart
  new_price_per_night = rand(79..225)
  new_number_of_guests = rand(1..6)
  r = Flat.new(name: new_name, address: new_address, description: new_description, price_per_night: new_price_per_night, number_of_guests: new_number_of_guests)
  r.save!
end
