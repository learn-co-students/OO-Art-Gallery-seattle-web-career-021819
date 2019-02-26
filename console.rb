require_relative '../config/environment.rb'

#Painting initialize(title, price, artist, gallery)

#create museums (name, city)
louvre = Gallery.new("The Louvre", "Paris")
sam  = Gallery.new("SAM", "Seattle")
abstract = Gallery.new("Abstract Museum", "London")

#create artists(name, years exp)
vinci = Artist.new("Da Vinci", 50)
garden_artist = Artist.new("Garden Artist", 5)
water_artist = Artist.new("Water Artist", 15)
sky_artist = Artist.new("Sky Artist", 17)

mona = Painting.new("Mona", 500, vinci, louvre)
garden = Painting.new("Garden", 300, garden_artist, louvre)
mountains = Painting.new("Mountains", 600, vinci, sam)
water = Painting.new("Water", 350, water_artist, abstract)
sky = Painting.new("Sky", 200, sky_artist, abstract)




puts mona.title #mona
puts garden.price #300
puts mountains.artist #da vinci
puts water.gallery #abstract museum
puts sky.price #200
puts
puts "testing painting class"
puts Painting.all
puts Painting.total_price #1950
puts
puts "testing gallery class"
puts louvre.city
puts sam.name
puts abstract.paintings.to_s
puts
puts
puts abstract.artist_names.to_s
puts
puts
puts louvre.artists.to_s
puts
puts abstract.most_expensive_painting
puts
puts "testing artist class"
puts
puts Artist.total_experience
puts
puts vinci.paintings
puts
puts vinci.artist_painting_count
puts
puts Artist.most_prolific.name


binding.pry

puts "Bob Ross rules."
