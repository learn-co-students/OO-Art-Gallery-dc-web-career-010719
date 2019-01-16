class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    artist_paintings = []
    Painting.all.each do |painting|
      if painting.artist == self
        artist_paintings << painting
      end
    end
  return artist_paintings
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    years = 0
    @@all.each do |artist|
      years += artist.years_experience
    end
    years
  end

  def self.most_prolific
    highest_amount = 0
    highest_instance = nil
    @@all.each do |artist|
      test = (artist.paintings.count.to_f / artist.years_experience)
       if test > highest_amount
         highest_amount = test
         highest_instance = artist
       end
     end
     return highest_instance
  end

  def create_painting(title, price, gallery)
    painting = Painting.new(title, price, self, gallery)
    return painting
  end

end
