class Painting

  attr_accessor :artist, :gallery
  attr_reader :title, :price

  @@all = []

  def initialize(title, price, artist=nil, gallery=nil)
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
    total = 0.0
    self.all.each { |painting| total += painting.price }
    return total
  end

  def self.by_artist(artist)
    self.all.select { |painting| painting.artist == artist }
  end

  def self.in_gallery(gallery)
    self.all.select { |painting| painting.gallery == gallery }
  end
end
