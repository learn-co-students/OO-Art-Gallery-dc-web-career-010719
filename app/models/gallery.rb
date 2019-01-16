class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
    	painting.gallery == self
    end
  end

  def artists
  	self.paintings.collect do |painting|
  		painting.artist
  	end
  end

  def artist_names
  	self.paintings.collect do |painting|
  	  painting.artist.name
  	end.uniq
  end

  def most_expensive_painting
    self.paintings.max do |painting|
      painting.price
    end
  end

  def self.all
  	@@all
  end

end
