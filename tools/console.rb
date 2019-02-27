require_relative '../config/environment.rb'

# ARTISTS
bob_ross = Artist.new("Bob Ross", 50)
van_gogh = Artist.new("Van Gogh", 10)
pablo_picasso = Artist.new("Pablo Picasso", 25)
claude_monet = Artist.new("Claude Monet", 10)

# GALLERIES
moma = Gallery.new("Museum of Modern Art", "New York City")
louvre = Gallery.new("Louvre", "Paris")
met = Gallery.new("Metropolitan Museum of Art", "New York City")
national_gallery = Gallery.new("The National Gallery", "London")

# PAINTINGS
starry_night = Painting.new("Starry Night", 10_000, van_gogh, moma)
sunflowers = Painting.new("Sunflowers", 20_000, van_gogh, louvre)
another = Painting.new("Another", 40_000, van_gogh, met)
guernica = Painting.new("Guernica", 40_000, pablo_picasso, louvre)
old_guitarist = Painting.new("The Old Guitarist", 20_000, pablo_picasso, met)
water_lily = Painting.new("Water Lily", 50_000, claude_monet, national_gallery)
test1 = Painting.new("Test1", 60_000, claude_monet, met)
test2 = Painting.new("Test2", 70_000, claude_monet, moma)
test3 = Painting.new("Test3", 80_000, claude_monet, moma)
bubbling_stream = Painting.new("Bubbling Stream", 60_000, bob_ross, louvre)


# Painting.total_price
# binding.pry
Pry.start
puts "Bob Ross rules."
