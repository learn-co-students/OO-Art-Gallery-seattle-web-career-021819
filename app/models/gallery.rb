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
    Painting.all.select do |painting_v|
      painting_v.gallery == self
    end
  end

  def artists
    paintings.map do |painting_v|
      painting_v.artist
    end
  end

  def most_expensive_painting
    paintings.max_by do |painting_v|
      painting_v.price
    end
  end

end
