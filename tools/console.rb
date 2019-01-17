require_relative '../config/environment.rb'

#initialize
picasso = Artist.new("Pablo", 15)
dali = Artist.new("Salvador", 10)
louvre = Gallery.new("The Louvre", "Paris")
tate = Gallery.new("Tate Modern", "London")
guitarist = Painting.new("The Old Guitarist", 15000, picasso, louvre)
time = Painting.new("The Persistence of Time", 30000, dali, tate)
horse = dali.create_painting("horse", 20000, louvre)

#artist tests
puts Artist.all == [picasso, dali]
puts dali.paintings == [time, horse]
puts dali.galleries == [tate, louvre]
puts dali.cities == ["London", "Paris"]
puts Artist.total_experience == 25
puts Artist.most_prolific == dali

#painting tests
puts Painting.all == [guitarist, time, horse]
puts Painting.total_price == 65000


#gallery tests
puts Gallery.all == [louvre, tate]
puts louvre.paintings == [guitarist, horse]
puts louvre.artists == [picasso, dali]
puts louvre.artist_names == ["Pablo", "Salvador"]
puts louvre.most_expensive_painting == horse


binding.pry

puts "Bob Ross rules."
