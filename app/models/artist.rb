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

  def self.have_paintings
    #returns array of artists who have any paintings
    self.all.select { |a| !a.paintings.empty?}
  end

  def years_per_painting
    #returns # of years per painting for given artist
    if !self.paintings.empty?
      self.years_experience.to_f/self.paintings.size
    end
  end

  def self.most_prolific
    #finds highest paintings-to-years ratio among artists
    mp = self.have_paintings.map do |a|
      a.years_per_painting
    end.min
    #selects artist(s) with this ratio
    mpas = self.have_paintings.select do |a|
      a.years_per_painting == mp
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
