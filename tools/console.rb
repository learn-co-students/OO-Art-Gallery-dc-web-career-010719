require_relative '../config/environment.rb'

lab = Artist.new("Kate Labedsky", 15)
frida = Artist.new("Frida Kahlo", 30)
diego = Artist.new("Diego Rivera", 46)

mex = Gallery.new("Mexican Embassy", "Washington, DC")
rock = Gallery.new("Rockefeller Center", "New York City")
met = Gallery.new("Metropolitan Museum of art", "New York City")

puts "Artist .all should return an array of all artist instances"
puts Artist.all == [lab, frida, diego]
puts "\n"

puts "Gallery .all should return an array of all gallery instances"
puts Gallery.all == [mex, rock, met]
puts "\n"

puts "Artist .total_experience should return the total years of all artists"
puts Artist.total_experience == 91
puts "\n"

puts "Artist .most_prolific should return the artist with the highest amount of paintings per years of experience"
puts Artist.most_prolific == lab
puts "\n"

puts "Artist #create_painting should create a new painting belonging to self and Painting .all should return an array of all painting instances"
se = frida.create_painting("Sin Esperanza", 10000, mex)
dyf = frida.create_painting("Diego y Frida", 15500, mex)
cdf = diego.create_painting("Cargador de Flores", 50000, mex)
vdt = diego.create_painting("Vista de Toledo", 7000, rock)
pm = lab.create_painting("Paint Mixing", 400, met)
pm2 = lab.create_painting("Second Paint Mixing", 500, rock)
puts Painting.all == [se, dyf, cdf, vdt, pm, pm2]
california = "false gallery"
ser = frida.create_painting("Frida y Diego", 400, california)
puts ser == "The gallery 'false gallery' does not exist. Try again."
puts "\n"

puts "Artist #paintings and Gallery #paintings should return all of the paintings belonging to a certain artist/gallery"
puts frida.paintings == [se, dyf]
puts diego.paintings == [cdf, vdt]
puts mex.paintings == [se, dyf, cdf]
puts rock.paintings == [vdt, pm2]
puts "\n"

puts "Painting .total_price should return the sum of the prices for all of the paintings"
puts Painting.total_price == 83400
puts "\n"

puts "Artist #galleries should return the galleries an artist has paintings in"
puts diego.galleries == [mex, rock]
puts frida.galleries == [mex]
puts lab.galleries == [met, rock]
puts "\n"

puts "Artist #cities should return the cities an artist has paintings in"
puts diego.cities == ["Washington, DC", "New York City"]
puts frida.cities == ["Washington, DC"]
puts lab.cities == ["New York City"]
puts "\n"

puts "Gallery #artists should return the artists that have paintings in a gallery"
puts mex.artists == [frida, diego]
puts met.artists == [lab]
puts "\n"

puts "Gallery #artist_names should return the names of the artists that have paintings in a gallery"
puts mex.artist_names == [frida.name, diego.name]
puts met.artist_names == [lab.name]
puts "\n"

puts "Gallery #most_expensive_painting should return the painting in that gallery with the highest price"
puts mex.most_expensive_painting == cdf
puts rock.most_expensive_painting == vdt
puts "\n"

puts "Bob Ross rules."
