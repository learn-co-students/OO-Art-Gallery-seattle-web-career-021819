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
  Painting.all.select do |paint|
    paint.artist == self
  end
end


def galleries
  Gallery.all.each do |gal|
    gal.art.select do |paint|
      paint.artist == self
    end
end
end


def cities
  self.galleries.map do |gallery|
    gallery.city
  end
end


def self.total_experience
  exp = []
  @@all.each do |person|
    exp << person.years_experience
  end
  return exp.reduce(:+)
end



def self.most_prolific
  prolific = Hash.new
  Painting.all.each do |paint|
    if prolific[paint.artist] == nil
      prolific[paint.artist] = 1
    else
      prolific[paint.artist] += 1
    end
  end
  return prolific.max_by{|k, v| v}
end


def create_painting(title, price, gallery)
  np = Painting.new(title, price, self)
  gallery.art << np
end

end
