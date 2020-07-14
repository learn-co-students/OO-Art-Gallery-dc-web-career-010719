class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def paintings
    Painting.by_artist(self)
  end

  def galleries
    galleries = []
    self.paintings.each do |painting|
      galleries << painting.gallery
    end
    galleries.uniq
  end

  def cities
    cities = []
    self.galleries.each do |gallery|
      cities << gallery.city
    end
    cities.uniq
  end

  def self.all
    return @@all
  end

  def self.total_experience
    total = 0
    self.all.each { |artist| total += artist.years_experience }
    return total
  end

  def self.most_prolific
    self.all.max_by { |artist| artist.paintings.length.to_f / artist.years_experience }
  end
end
