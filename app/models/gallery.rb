class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
    @paintings = []
    @artists = []
  end

  def self.all
    @@all
  end

  def paintings
    @paintings
  end

  def artists
    @artists
  end

  def artist_names
    self.artists.collect do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    max = 0
    max_index = 0
    self.paintings.each_with_index do |painting, index|
      if max < painting.price
        max = painting.price
        max_index = index
      end
    end
    return self.paintings[max_index]
  end

end
