class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  # INSTANCE METHODS

  def paintings
    # array of all paintings by an artist
    Painting.all.select do |pp|
      pp.artist == self
    end.uniq
  end

  def galleries
    # array of all galleries that an artist has paintings in
    self.paintings.map do |pp|
      pp.gallery
    end.uniq
  end

  def cities
    # array of all cities that an artist has paintings in
    self.galleries.map do |gg|
      gg.city
    end.uniq
  end

  def create_painting(title, price, gallery)
    # creates a new painting belonging to that artist
    Painting.new(title, price, self, gallery)
  end

  # CLASS METHODS

  def self.all
    @@all
  end

  def self.total_experience
    # integer that is the total years of experience of all artists
    total = 0
    self.all.map do |xx|
      total += xx.years_experience
    end
    total
  end

  def self.most_prolific
    # instance of the artist with the highest amount of paintings per year of experience
    most = nil
    artist = nil
    self.all.each do |xx|
      years = xx.years_experience.to_f
      count = xx.paintings.count.to_f
      if most == nil
        most = count / years
        artist = xx
      elsif most < count / years
        most = count / years
        artist = xx
      end
    end
    artist
  end

end
