require_relative '../config/environment.rb'




# binding.pry

puts "Bob Ross rules."

ryan = Artist.new("Ryan", 7)
matt = Artist.new("Matt", 2)
puts Artist.all == [ryan, matt]
louve = Gallery.new("Louve", "Paris")
art_house = Gallery.new("Art House", "New York")
mona_lisa = Painting.new("Mona Lisa", 50000, ryan, louve)
sunshine = Painting.new("Sunshine", 60000, matt, art_house)
requiem = Painting.new("Requiem", 1000, ryan, art_house)
ryan.create_painting("Alabama Rain", 12000, art_house)

puts ryan.paintings.count == 3
puts ryan.galleries == [louve, art_house, art_house]
puts matt.paintings == [sunshine]
puts matt.galleries == [art_house]
puts ryan.cities == ["Paris", "New York"]
puts Artist.total_experience == 9
puts Artist.most_prolific == matt
puts Painting.all.count == 4
puts Painting.total_price == 123000
puts louve.paintings == [mona_lisa]
puts art_house.artists == [matt, ryan]
puts art_house.artist_names == [matt.name, ryan.name]
puts art_house.most_expensive_painting == sunshine
