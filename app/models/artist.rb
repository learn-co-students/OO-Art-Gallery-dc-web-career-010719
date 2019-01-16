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

  def self.total_experience
    total = 0
    self.all.each do |exp|
      total += exp.years_experience
    end
    total
  end

  def self.most_prolific
    most_pro = nil
    most_amount = 0
    self.all.each do |artist|
      ppy = artist.paintings.size.to_f / artist.years_experience.to_f
      if ppy > most_amount
        most_pro = artist
        most_amount = ppy
      end
    end
    most_pro
  end

  def create_painting(title, price, gallery_object)
    Painting.new(title, price, self, gallery_object)
  end

  def paintings
    portfolio = []
    Painting.all.each do |painting|
      if painting.artist == self
        portfolio << painting
      end
    end
    portfolio
  end

  def galleries
    gals = []
    Painting.all.each do |painting|
      if painting.artist == self
        gals << painting.gallery
      end
    end
    gals.uniq
  end

  def cities
    locs = []
    self.galleries.each do |gal|
      locs << gal.city
    end
    locs.uniq
  end

end









# Artist#cities
# Return an array of all cities that an artist has paintings in
