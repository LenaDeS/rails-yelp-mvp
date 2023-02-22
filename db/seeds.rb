# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
luciana = {name: "Luciana", address: "7 rue de Meaux Paris", category: "french"}
pizza_hut =  {name: "Pizza Hut", address: "15 avenue de la Republic", category: "italian"}
funky = {name: "Funky", address: "place Concorde Paris", category: "chinese"}
vegan = {name: "Wild Moon", address: "Gare du Sud", category: "japanese"}
steakhouse = {name: "Steakhouse", address: "Bruxelles", category: "belgian"}

[luciana, pizza_hut, funky, vegan, steakhouse].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
