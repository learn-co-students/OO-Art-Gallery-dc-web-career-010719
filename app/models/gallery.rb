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
    Painting.all.select{|painting| painting.gallery == self}
  end

  def artists
    artists_in_gallery = []
    self.paintings.each do |painting|
      artists_in_gallery << painting.artist
    end
    artists_in_gallery.uniq
  end

  def artist_names
    self.artists.map{|artist| artist.name}
  end

  def most_expensive_painting
    self.paintings.sort_by{|painting| painting.price}.reverse[0]
  end

end
