class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting_v|
      painting_v.artist == self
    end
  end

  def galleries
    paintings.map do |painting_v|
      painting_v.gallery
    end
  end

  def cities
    galleries.map do |gallery_v|
      gallery_v.city
    end
  end

  def self.total_experience
    self.all.reduce(0) do |sum, num|
      sum + num.years_experience
    end
  end

  def create_painting(title, price, gallery)

  end



end
