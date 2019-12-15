class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    price_array = self.all.map do |painting|
      painting.price
    end
    price_array.inject(0){|sum,x| sum + x}
  end
  
end
