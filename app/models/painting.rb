class Painting
  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, artist, price, gallery)
    @title = title
    @artist = artist
    @price = price
    @gallery = gallery
    @@all << self
  end

  # Returns an integer that is the total price of all paintings
  def total_price
    self.all.inject {|sum, painting| sum+painting.price}
  end

  def self.all
    @@all
  end
end
