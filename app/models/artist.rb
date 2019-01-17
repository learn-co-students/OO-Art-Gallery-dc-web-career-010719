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
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}
  end

  def cities
    self.paintings.map {|painting| painting.gallery.city}
  end

  def self.total_experience
    self.all.sum {|artist| artist.years_experience}
  end

  def self.most_prolific
    paintings_per_year = []
    Artist.all.each_with_index do |artist, index|
      count = Artist.all.count {|artist| artist.paintings}
      paintings_per_year << count.to_f/artist.years_experience
    end
    Artist.all[paintings_per_year.index(paintings_per_year.max)]
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
