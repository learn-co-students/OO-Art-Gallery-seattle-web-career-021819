class Gallery

  attr_reader :name, :city
  attr_accessor :art

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @art = []
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    self.art
  end

  def artists
    paintings.map do |pnt|
      pnt.artist
    end
  end

def artist_names
  artists.map do |arts|
    arts.name
  end
end

def most_expensive_painting
  expensive = nil
  paintings.each do |pnt|
    if expensive == nil
      expensive = pnt
    elsif pnt.price > expensive.price
      expensive = pnt
    end
  end
  return expensive
end

end
