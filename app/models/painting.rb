class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title:, price:, artist:, gallery:nil)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.map { |p| p.price }.inject(:+)
  end

end
