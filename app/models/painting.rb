class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  # CLASS METHODS

  def self.all
    @@all
  end

  def self.total_price
    # integer that is the total price of all paintings
    total = 0
    self.all.each do |pp|
      total += pp.price
    end
    total
  end

end
