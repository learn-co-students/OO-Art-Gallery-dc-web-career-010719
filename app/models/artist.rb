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
    Artist.all.each do |person|
      total += person.years_experience
    end
    total
  end

  def self.most_prolific
    hash = {}
    self.all.each do |artist|
      num = artist.paintings.length / artist.years_experience
      hash[artist] = num
    end
    prolific = hash.max_by {|artist, num| num}
    prolific.each do |artist, num|
      return artist
    end
  end

  def create_painting(title, price, gallery)
    if Gallery.all.include?(gallery)
      Painting.new(title, price, self, gallery)
    else
      message = "The gallery '#{gallery}' does not exist. Try again."
      puts message
      message
    end
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.collect do |painting|
      painting.gallery
    end.uniq
  end

  def cities
    city_list = []
    self.paintings.each do |painting|
      unless city_list.include?(painting.gallery.city)
        city_list << painting.gallery.city
      end
    end
    city_list
  end

end
