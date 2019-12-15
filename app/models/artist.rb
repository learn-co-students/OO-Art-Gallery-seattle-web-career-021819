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
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end.uniq
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    total = 0
    self.all.each do |artist|
      total += artist.years_experience
    end
    total
  end

  def self.most_prolific
    paints_per_year = 0
    mp = nil
    self.all.each do |artist|
      ppy = artist.paintings.count / artist.years_experience.to_f
      if ppy > paints_per_year
        paints_per_year = ppy
        mp = artist
      end
    end
    mp
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
