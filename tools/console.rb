require_relative '../config/environment.rb'

puts "Artist Tests:"
puts "Instantiate artists"
pissaro = Artist.new("Pissaro", 30)
picasso = Artist.new("Picasso", 25)
monet = Artist.new("Monet", 14)
miro = Artist.new("Miro", 23)

chelsea = Gallery.new("Chelsea", "New York")
soho = Gallery.new("SoHo", "New York")
pompidou = Gallery.new("Pompidou", "Paris")

puts "Returns an array of all the artists"
puts Artist.all == [pissaro, picasso, monet, miro]
puts "\n"

puts "Given the arguments of title, price and gallery, creates a new painting belonging to that artist"
pissaro.create_painting("Pissaro A", 100, chelsea)
picasso.create_painting("Picasso A", 100, soho)
picasso.create_painting("Picasso B", 200, pompidou)
monet.create_painting("Monet A", 100, pompidou)
monet.create_painting("Monet B", 200, soho)
monet.create_painting("Monet C", 300, chelsea)
monet.create_painting("Monet D", 400, soho)
miro.create_painting("Miro A", 50, chelsea)
miro.create_painting("Miro B", 200, chelsea)
miro.create_painting("Miro C", 300, pompidou)
miro.create_painting("Miro D", 400, soho)
puts "\n"

puts "Returns an array all the paintings by an artist"
puts pissaro.paintings.inspect
puts pissaro.paintings.length == 1
puts picasso.paintings.inspect
puts picasso.paintings.length == 2
puts monet.paintings.inspect
puts monet.paintings.length == 4
puts miro.paintings.inspect
puts miro.paintings.length == 4
puts "\n"

puts "Returns an array of all the galleries that an artist has paintings in"
puts pissaro.galleries.inspect
puts pissaro.galleries.length == 1
puts picasso.galleries.inspect
puts picasso.galleries.length == 2
puts monet.galleries.inspect
puts monet.galleries.length == 3
puts miro.galleries.inspect
puts miro.galleries.length == 3
puts "\n"

puts "Return an array of all cities that an artist has paintings in"
puts pissaro.cities.inspect
puts pissaro.cities.length == 1
puts picasso.cities.inspect
puts picasso.cities.length == 2
puts monet.cities.inspect
puts monet.cities.length == 2
puts miro.cities.inspect
puts miro.cities.length == 2
puts "\n"

puts "Returns an integer that is the total years of experience of all artists"
puts Artist.total_experience

puts "\n"

puts "Returns an instance of the artist with the highest amount of paintings per year of experience."
puts Artist.most_prolific.name
puts "\n"


puts "Painting Tests:"
puts "Returns an array of all the paintings"
puts Painting.all.inspect
puts Painting.all.length == 11
puts "\n"

puts "Returns an integer that is the total price of all paintings"
puts Painting.total_price
puts "\n"


puts "Gallery Tests:"
puts "Returns an array of all the galleries"
puts Gallery.all.inspect
puts "\n"

puts "Returns an array of all paintings in a gallery"
puts chelsea.paintings.inspect
puts soho.paintings.inspect
puts pompidou.paintings.inspect
puts "\n"

puts "Returns an array of all artists that have a painting in a gallery"
puts chelsea.artists.inspect
puts soho.artists.inspect
puts pompidou.artists.inspect
puts "\n"

puts "Returns an array of the names of all artists that have a painting in a gallery"
puts chelsea.artist_names.inspect
puts soho.artist_names.inspect
puts pompidou.artist_names.inspect
puts "\n"

puts "Returns an instance of the most expensive painting in a gallery"
puts "Most expensive in Chelsea"
puts chelsea.most_expensive_painting.artist.name
puts "Most expensive in Soho"
puts soho.most_expensive_painting.inspect
puts soho.most_expensive_painting.length == 2
puts "Most expensive in Pompidou"
puts pompidou.most_expensive_painting.artist.name

binding.pry

puts "Bob Ross rules."
