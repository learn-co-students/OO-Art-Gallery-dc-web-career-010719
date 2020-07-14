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
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    self.paintings.collect {|painting| painting.artist}.uniq
  end

  def artist_names
    self.artists.collect {|artist| artist.name}
  end

  def most_expensive_painting
    price = 0.0
    the_painting = []
    paintings.each do |painting|
      if painting.price.to_f > price
        the_painting = []
        price = painting.price.to_f.round(2)
        the_painting << painting
      elsif painting.price.to_f == price
        the_painting << painting
      end
    end
    if the_painting.length == 1
      the_painting[0]
    elsif the_painting.length > 1
      the_painting
    end
  end
end
