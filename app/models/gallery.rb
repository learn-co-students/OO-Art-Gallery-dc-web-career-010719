class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    array = []
    Painting.all.each do |painting|
      if painting.gallery == self
        array<< painting
      end
    end
    return array
  end

  def self.all
    return @@all
  end

  def artists
    array = []
    Painting.all.each do |painting|
      #binding.pry
      if painting.gallery == self && !array.include?(painting.artist)
        array << painting.artist
      end

    end
    return array
  end

  def artist_names
    array = []
    self.artists.each do |art|
      array << art.name
    end
    return array
  end

  def most_expensive_painting
    inst = nil
    high = 0
    self.paintings.each do |painting|
      if painting.price > high
        high = painting.price
        inst = painting
      end
    end
    return inst
  end

end
