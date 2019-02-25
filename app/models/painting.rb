class Painting

  attr_reader :title, :price, :artist

  @@all = []

  def initialize(title, price, artist)
    @title = title
    @price = price
    @@all << self
    @artist = artist
  end

def self.all
  @@all
end

def self.total_price
  prices = []
   @@all.each do |pnt|
     prices << pnt.price
   end
   return prices.reduce(:+)
end

end
