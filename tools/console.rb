require_relative '../config/environment.rb'

monet = Artist.new("Monet", 20)
steve = Artist.new("Steve", 1)
picasso = Artist.new("picasso", 12)

sunflowers = Painting.new("Sunflowers", 10000, monet)
tigers = Painting.new("Tigers", 5, steve)
vase = Painting.new("Vase of Flowers", 300, picasso)
person = Painting.new("Weird Dude", 5000, picasso)

louvre = Gallery.new("Louvre", "Paris")
met = Gallery.new("Metropolitan Museum of Art", "New York")
louvre.art << tigers
louvre.art << vase
louvre.art << sunflowers
met.art << person

binding.pry

puts "Bob Ross rules."
