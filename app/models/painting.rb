class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    prices = self.all.collect {|painting| painting.price}
    prices.inject {|sum, price| sum + price}
  end


end
