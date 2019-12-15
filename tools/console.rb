require_relative '../config/environment.rb'


#
klimt = Artist.new("Gustav Klimt", 40)
rothko = Artist.new("Mark Rothko", 30)


#
moma = Gallery.new("MOMA", "New York")
sam = Gallery.new("SAM", "Seattle")


#
kiss = Painting.new("The Kiss", 50000000.0, klimt, moma)
tree = Painting.new("Tree of Life", 10000000.0, klimt, moma)
adele = Painting.new("Portrait of Adele Bloch-Bauer", 150000000.0, klimt, sam)
danae = Painting.new("Danae", 20000000.0, klimt, sam)
untitled1 = Painting.new("Untitled \#1", 10000000.0, rothko, moma)
untitled2 = Painting.new("Untitled \#2", 50000000.0, rothko, sam)










puts "1. Artist.all.to_s - outputs:"
puts Artist.all.to_s
puts
puts

puts "2. klimt.paintings.to_s - outputs:"
puts klimt.paintings.to_s
puts
puts

puts "3. klimt.galleries.to_s - outputs:"
puts klimt.galleries.to_s
puts
puts

puts "4. klimt.cities.to_s - outputs:"
puts klimt.cities.to_s
puts
puts

puts "5. Artist.total_experience.to_s - outputs:"
puts Artist.total_experience.to_s
puts
puts

puts "6. Artist.most_prolific.to_s - outputs:"
puts Artist.most_prolific.to_s
puts "   Artist.most_prolific.name - outputs:"
puts Artist.most_prolific.name
puts
puts

puts "7. rothko.create_painting(\"Untitled 3\", 300000000.0, sam)"
rothko.create_painting("Untitled 3", 300000000.0, sam)
puts "rothko.paintings.to_s outputs:"
puts rothko.paintings.to_s
puts
puts


puts "8. Painting.all.to_s - outputs:"
puts Painting.all.to_s
puts
puts

puts "9. Painting.total_price.to_s - outputs:"
puts Painting.total_price.to_s
puts
puts

puts "10. Gallery.all.to_s - outputs:"
puts Gallery.all.to_s
puts
puts

puts "11. moma.paintings.to_s - outputs:"
puts moma.paintings.to_s
puts
puts

puts "12. moma.artists.to_s - outputs:"
puts moma.artists.to_s
puts
puts

puts "12. moma.artist_names.to_s - outputs:"
puts moma.artist_names.to_s
puts
puts

puts "13. moma.most_expensive_painting.to_s - outputs:"
puts moma.most_expensive_painting.to_s
puts "(moma.most_expensive_painting.title):"
puts moma.most_expensive_painting.title
puts
puts









# binding.pry
#
# puts "Bob Ross rules."
