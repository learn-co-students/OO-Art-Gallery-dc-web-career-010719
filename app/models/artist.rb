class Artist

  attr_reader :name, :years_experience

  @@all = []
  @@total_years_of_experience = 0

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
    @paintings = []
    @galleries = []
    @cities = []
    @@total_years_of_experience += years_experience
  end

  def self.all
    @@all
  end

  def paintings
    @paintings
  end

  def galleries
    @galleries
  end

  def cities
    @cities
  end

  def self.total_experience
    @@total_years_of_experience
  end

  def self.most_prolific
    max = 0
    max_index = 0
    self.all.each_with_index do |artist, index|
      if max < (artist.paintings.length.to_f / artist.years_experience).round(2)
        max = (artist.paintings.length.to_f / artist.years_experience).round(2)
        max_index = index
      end
    end
    return self.all[max_index]
  end

  def create_painting(title, price, gallery)
    painting = Painting.new(title, price)
    self.paintings << painting
    self.galleries << gallery unless self.galleries.include?(gallery)
    self.cities << gallery.city unless self.cities.include?(gallery.city)
    gallery.paintings << painting
    gallery.artists << self unless gallery.artists.include?(self)
    painting
  end

end
