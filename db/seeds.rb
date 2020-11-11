puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5, chef_name: 'Sebastien' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4, chef_name: 'Juan' }

[ dishoom, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  # create is going to return true or false
  # create! is going to return true or the errors

  #   restaurant = Restaurant.new(attributes)
  #   restaurant.save!

  puts "Created #{restaurant.name}"
end

puts "Finished!"
