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

  def self.total_experience
    #total years of experience for all artists
    years = self.all.map { |artist| artist.years_experience }
    total = years.inject(:+)
  end

  def create_painting(title:, price:, gallery:)
    Painting.new(title: title, price: price, gallery: gallery, artist: self)
  end

  def paintings
    #all paintings for a given artist
    Painting.all.select { |p| p.artist == self }
  end

  def prolificity
    #returns paintings per year for given artist
    self.paintings.size/self.years_experience.to_f
  end

  def self.most_prolific
    #finds fastest painting rate among artists
    fpr = self.all.map do |a|
      a.prolificity
    end.max
    #selects artist(s) with this ratio
    mpas = self.all.select do |a|
      a.prolificity == fpr
    end
    #returns artist or [artists]
    if mpas.size == 1
      mpas[0]
    else
      mpas
    end
  end

  def galleries
    self.paintings.map { |p| p.gallery }.uniq
  end

  def cities
    self.galleries.map { |g| g.city }.uniq
  end

end
