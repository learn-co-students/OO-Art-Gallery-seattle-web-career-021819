require_relative '../config/environment.rb'

picasso=Artist.new("Picasso", 50)
mucha=Artist.new("Mucha", 25)
vangogh=Artist.new("Vincent VG", 5)

met=Gallery.new("MET", "New York City")
moma=Gallery.new("MoMA", "Manhattan")

gurenica=Painting.new("Gurenica", 100, picasso, met)
selfportrait=Painting.new("Self Portrait", 50, picasso, met)

slav_epic=Painting.new("Slav Epic", 75, mucha, moma)
starry_night=Painting.new("Starry Night", 500, vangogh, moma)



binding.pry

puts "Bob Ross rules."
