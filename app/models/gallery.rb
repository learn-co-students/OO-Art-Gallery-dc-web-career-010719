class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    arts = []
    self.paintings.each do |painting|
      unless arts.include?(painting.artist)
        arts << painting.artist
      end
    end
    arts
  end

  def artist_names
    self.artists.collect do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    hash = {}
    self.paintings.each do |painting|
      hash[painting] = painting.price
    end
    expensive = hash.max_by {|painting, price| price}
    expensive.each do |painting, price|
      return painting
    end
  end
end
