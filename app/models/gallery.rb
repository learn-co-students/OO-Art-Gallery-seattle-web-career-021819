class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists
    self.paintings.map { |painting| painting.artist}.uniq
  end

  def artist_names
    self.artists.map { |artist| artist.name }.uniq
  end

  def most_expensive_painting
    big_price = 0
    painting_output = nil
    Painting.all.each do |painting|
      if painting.price > big_price
        big_price = painting.price
        painting_output = painting
      end
    end
    painting_output
  end

end
