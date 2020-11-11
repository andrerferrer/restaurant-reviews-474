puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }

[ dishoom, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  # create is going to return true or false
  # create! is going to return true or the errors

  #   restaurant = Restaurant.new(attributes)
  #   restaurant.save!

  puts "Created #{restaurant.name}"
end

puts 'Creating some chefs'
sebastien = Chef.create(name: 'Sebastien', restaurant: Restaurant.first)
juan = Chef.create(name: 'Juan', restaurant: Restaurant.second)

puts "Finished!"
