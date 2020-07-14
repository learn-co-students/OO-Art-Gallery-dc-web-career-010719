class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist = nil, gallery = nil)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    return @@all
  end

  def self.total_price
    total =0
    Painting.all.each do |painting|
        total += painting.price
    end
    return total
  end



end
