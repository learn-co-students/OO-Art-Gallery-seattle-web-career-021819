class Artist

  attr_reader :name, :years_experience

  @@all = []
  @@total_experience = 0

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@total_experience += @years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    #returns array of all paintings by an artist
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def artist_painting_count
    array = Painting.all.select do |painting|
      painting.artist == self
    end
    array.length
  end


  def galleries
    #returns array of all galleries that an artist has paintings in
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    #returns array of all cities artist has paintings in
    self.galleries.map do |painting|
      gallery.city
    end
  end

  def self.total_experience
    @@total_experience
  end

  def self.most_prolific
    #highest amount of paintings per year of experience
    self.all.max_by do |artist| #go through each artist
         artist.paintings.length / artist.years_experience
      end

  end

def create_painting(title, price, gallery)
  Painting.new(title, price, self, gallery)
end

  end
