class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []
  @@total_price = 0

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    
    @@all << self
    @@total_price += @price
  end

  def self.all
    @@all
  end

  def self.total_price
    @@total_price
  end

end
