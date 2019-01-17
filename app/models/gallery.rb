class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name:, city:)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |p| p.gallery == self }
  end

  def artists
    self.paintings.map { |p| p.artist }.uniq
  end

  def artist_names
    self.artists.map { |a| a.name }
  end

  def most_expensive_painting
    #finds highest price
    max = self.paintings.map { |p| p.price }.max
    #finds gallery's paintings that have this price
    meps = self.paintings.select { |p| p.price == max}
    #returns painting or [paintings]
    if meps.size == 1
      meps[0]
    else
      meps
    end
  end

end
