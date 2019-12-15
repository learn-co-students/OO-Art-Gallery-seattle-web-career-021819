require_relative '../config/environment.rb'

## Setting up variables
bob = Artist.new("Bob Ross", 20)
steve = Artist.new("Steve", 1)
kyle = Artist.new("Kyle", 70)
ashley = Artist.new("Ashley", 5)

g1 = Gallery.new("Seattle's Gallery", "Seattle")
g2 = Gallery.new("Portland's Gallery", "Portland")
g3 = Gallery.new("New York's Gallery", "New York")
g4 = Gallery.new("San Francisco's Gallery", "San Francisco")

p1 = Painting.new("Painting 1", 1000, bob, g1)
p2 = Painting.new("Painting 2", 9, steve, g3)
p3 = Painting.new("Painting 3", 50, ashley, g4)
p4 = Painting.new("Painting 4", 150, kyle, g2)

## TESTS
# Artist Class
puts "----------ARTIST CLASS: TESTS----------"
puts "---Testing Artist.all---"
puts Artist.all
puts

puts "---Testing #paintings on Bob---"
puts bob.paintings
puts

puts "---Testing #galleries on Bob---"
puts bob.galleries
puts

puts "---Testing #cities on Steve---"
puts steve.cities
puts

puts "---Testing .total_experience---"
puts Artist.total_experience
puts

puts "---Testing .most_prolific---"
puts Artist.most_prolific
puts

puts "---Testing #create_painting w/ 'Painting 5', 70, g3 for Bob"
puts bob.create_painting("Painting 5", 70, g3)
puts

puts "----------PAINTING CLASS: TESTS----------"
puts "---Testing .all---"
puts Painting.all
puts

puts "---Testing .total_price---"
puts Painting.total_price
puts

puts "----------GALLERY CLASS: TESTS----------"
puts "---Testing .all---"
puts Gallery.all
puts

puts "---Testing #paintings on g1---"
puts g1.paintings
puts

puts "---Testing #artists on g3---"
puts g3.artists
puts

puts "---Testing #artist_names on g3---"
puts g3.artist_names
puts

puts "---Testing #most_expensive_painting on g3---"
puts g3.most_expensive_painting
puts

binding.pry

puts "Bob Ross rules."
