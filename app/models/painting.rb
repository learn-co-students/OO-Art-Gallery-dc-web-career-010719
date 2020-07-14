class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []
  @@total = 0

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
    @@total += price
  end

  def self.all
    @@all
  end

  def self.total_price
    @@total
  end


end
