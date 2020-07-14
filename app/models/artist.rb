class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.collect {|painting| painting.gallery}.uniq
  end

  def cities
    self.galleries.collect {|gallery| gallery.city}.uniq
  end

  def self.total_experience
    yrs_exp_a = self.all.collect {|artist| artist.years_experience}
    yrs_exp_a.inject {|sum, yrs| sum + yrs}.to_i
  end

  def paintings_per_year
    years = self.years_experience.to_f
    paintings = self.paintings.count.to_f
    paintings / years
  end

  def self.most_prolific
    self.all.sort_by {|artist| artist.paintings_per_year}.last
  end

  def create_painting(title, price, gallery)
    new_painting = Painting.new(title, price)
    new_painting.artist = self
    new_painting.gallery = gallery
  end

end
