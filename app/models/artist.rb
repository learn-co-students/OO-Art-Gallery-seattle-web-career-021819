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
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    self.paintings.map { |painting| painting.gallery}.uniq
  end

  def cities
    self.galleries.map { |gallery| gallery.city}.uniq
  end

  def self.total_experience
    years = 0
    self.all.each { |artist| years += artist.years_experience }
    years
  end

  def self.most_prolific
    most_person = nil
    best_rate = 0
    self.all.each do |artist|
      rate = artist.paintings.count.to_f / artist.years_experience.to_f
      if  rate > best_rate
        best_rate = rate
        most_person = artist
      end
    end
    most_person
  end


  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


end
