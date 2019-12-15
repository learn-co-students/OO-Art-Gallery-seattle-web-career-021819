require_relative '../config/environment.rb'

bjorn = Artist.new("Bjorn", 10)
virgil = Artist.new("Virgil", 20)
wyeth = Artist.new("Wyeth", 45)
jackson = Artist.new("Jackson", 32)
linda = Artist.new("Linda", 24)

empty = Gallery.new("Empty", "NYC")
agent = Gallery.new("Agent", "Chicago")
reverse = Gallery.new("Reverse", "Toronto")
soil = Gallery.new("Soil", "Seattle")

Painting.new("Study", 150, bjorn, agent)
Painting.new("'Air'", 666, virgil, empty)
Painting.new("Irony", 99, virgil, reverse)
Painting.new("Barn", 700, wyeth, reverse)
Painting.new("Splat", 500, jackson, empty)
Painting.new("The Pear", 650, linda, soil)
Painting.new("Who Knew?", 125, jackson, empty)
Painting.new("Finale", 800, jackson, empty)


puts "\nVirgil's paintings are in #{virgil.cities}"


puts "\nthe total price of all paintins is: $#{Painting.total_price}"

puts "\nthe total expereince of all artist is #{Artist.total_experience} years!"

puts "\nthis is the most expensive painting at empty gallery #{empty.most_expensive_painting}"



binding.pry

puts "Bob Ross rules."
