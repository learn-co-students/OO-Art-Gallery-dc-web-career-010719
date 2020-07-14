class Artist

  attr_reader :name, :years_experience
  attr_accessor :prolif_factor
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    prolif_factor = nil
    @@all << self
  end

  def create_painting(title, price, gallery)
  	Painting.new(title, price, self, gallery)
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.collect do |painting|
      painting.gallery
    end
  end

  def cities
  	self.galleries.collect do |gallery|
  		gallery.city
  	end
  end

  def self.total_experience
  	@@all.inject(0) do |sum, artist|
  		sum + artist.years_experience
  	end
  end

  def self.most_prolific
    @@all.each do |artist|
      artist.prolif_factor = (artist.paintings.count.to_f / artist.years_experience)
    end
    @@all.max_by do |artist|
      artist.prolif_factor
    end
  end
  	

  def self.all
  	@@all
  end

end
