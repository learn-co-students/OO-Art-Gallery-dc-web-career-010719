class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    return @@all
  end

  def paintings
    Painting.in_gallery(self)
  end

  def artists
    artists = []
    self.paintings.each do |painting|
      artists << painting.artist
    end
    artists.uniq
  end

  def artist_names
    self.artists.map { |artist| artist.name }
  end

  def most_expensive_painting
    self.paintings.max_by { |painting| painting.price }
  end
end
