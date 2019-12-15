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

  def to_s
    "#{@name}"
  end

  def paintings #array of all paintings in a gallery
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artist_names #array of all artists in THIS GALLERY
    paintings.collect do |painting|
      #binding.pry
      painting.artist.name
    end
  end

  def artists #array of all names of all artists that have a painting in a gallery
    Painting.all.map do |painting|
      painting.artist.name
    end
  end

  def most_expensive_painting #most expensive painting in gallery
   most = nil
    paintings.each do |painting|
      if most == nil
        most = painting
      elsif painting.price > most.price
        most = painting
      end
    end
    most.title
  end

end
