class Artist
  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  # Return all paintings by this artist
  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  # Returns an array of all the galleries that an artist has paintings in
  def galleries
    self.paintings.map {|painting| painting.gallery}
  end

  # Return an array of all cities that an artist has paintings in
  def cities
    self.galleries.map {|painting| painting.gallery}.uniq
  end

  # Returns an integer that is the total years of experience of all artists
  def self.total_experience
    self.all.inject {|sum, artist| sum+artist.years_experience}
  end

  # Returns an instance of the artist with
  # the highest amount of paintings per year of experience.
  def self.most_prolific
    self.all.max_by {|artist| artist.paintings/artist.years_experience}
  end

  # Given the arguments of title, price and gallery,
  # creates a new painting belonging to that artist
  def create_painting(title, price, gallery)
    Paiting.new(title, artist, price, gallery)
  end

  def self.all
    @@all
  end
end
