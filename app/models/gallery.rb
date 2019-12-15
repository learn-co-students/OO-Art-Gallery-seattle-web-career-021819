class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  # INSTANCE METHODS

  def paintings
    # array of all paintings in a gallery
    Painting.all.select do |pp|
      pp.gallery == self
    end
  end

  def artists
    # array of all artists that have a painting in a gallery
    self.paintings.map do |pp|
      pp.artist
    end.uniq
  end

  def artist_names
    # array of the names of all artists that have a painting in a gallery
    self.artists.map do |aa|
      aa.name
    end
  end

  def most_expensive_painting
    # instance of the most expensive painting in a gallery
    expensive_painting = nil
    highest_price = 0
    self.paintings.each do |pp|
      if expensive_painting == nil
        expensive_painting = pp
        highest_price = pp.price
      elsif highest_price < pp.price
        expensive_painting = pp
        highest_price = pp.price
      end
    end
    expensive_painting
  end

  # CLASS METHODS

  def self.all
    @@all
  end

end
