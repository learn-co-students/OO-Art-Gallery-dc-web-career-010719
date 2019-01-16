require 'pry'
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
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.collect {|painting| painting.gallery}.uniq
  end

  def cities
    galleries.collect {|gallery| gallery.city}.uniq
  end

  def self.total_experience
    total = 0
    self.all.each {|artist| total += artist.years_experience.to_i}
    total.to_i
  end

  def self.most_prolific
    avg = 0.0
    the_artist = []
    self.all.each do |artist|
      p = artist.paintings.length.to_f
      yoc = artist.years_experience
      new_avg = (p/yoc).to_f.round(2)
        if new_avg > avg
          the_artist = []
          avg = new_avg
          the_artist << artist
        elsif new_avg == avg
          the_artist << artist
        end
    end
    if the_artist.length == 1
      the_artist[0]
    elsif the_artist.length > 1
      the_artist
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


end
