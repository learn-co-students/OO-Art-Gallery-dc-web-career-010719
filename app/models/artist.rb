class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end


  def self.all
    return @@all
  end

  def paintings
    array = []
    Painting.all.each do |painting|
      #binding.pry
      if painting.artist == self
        array<< painting
      end
    end
    return array
  end

  def galleries
    array = []
    Painting.all.each do |painting|
      if painting.artist == self && !array.include?(painting.gallery)
        array<< painting.gallery
      end
    end
    return array
  end

  def cities
    array = []
    Painting.all.each do |painting|
      if !array.include?(painting.gallery.city)&& painting.artist == self
      array << painting.gallery.city
      end
    end
    return array
  end

  def self.total_experience
    total = 0
    Artist.all.each do |artist|
      total += artist.years_experience
    end
    return total
  end


  #paintings over years
  def self.most_prolific
    highest = 0
    inst = nil
    Artist.all.each do |artist|
      num = (artist.paintings.size.to_f)/(artist.years_experience)
      if num > highest
        highest = num
        inst = artist
      end
    end
    return inst
  end

  def create_painting(title, price, gallery)
    return Painting.new(title,price, self, gallery)     
  end

end
