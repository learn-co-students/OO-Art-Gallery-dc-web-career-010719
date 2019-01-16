require_relative '../config/environment.rb'

art1 = Artist.new("matthew ",2)
art2 = Artist.new("Aaron ",10)
art3 = Artist.new("fred ",3)
gal = Gallery.new("matthewgall","rockville")
gal2 = Gallery.new("matthewgallSECOND","bethesda")

paint = Painting.new("so much art ",70,art3, gal2)
paint2 = Painting.new("i love are ",10,art3,gal)
paint2 = Painting.new("whoa",10000,art2,gal)
paint3 = Painting.new("i love are ",10,art1, gal)
paint4 = Painting.new("i love are ",10,art3,gal)


puts"Artist.all"
puts Artist.all.size == 3
puts"Artist.all"

puts"Artist#paintings"
puts art3.paintings.size ==3
puts art1.paintings.size == 1
puts"Artist#paintings"

puts"Artist#galleries"
puts art3.galleries.size == 2
puts art1.galleries.size == 1
puts"Artist#galleries"

puts"Artist#cities"
puts art3.cities.size == 2
puts art1.cities.size == 1
puts"Artist#cities"

puts"Artist.total_experience"
puts Artist.total_experience == 15
art4 = Artist.new("teddy", 4)
puts Artist.total_experience == 19
puts"Artist.total_experience"

puts"Artist.most_prolific"
puts Artist.most_prolific == art3
paint7 = Painting.new("i love are ",10,art1,gal)
paint8 = Painting.new("i love are ",10,art1, gal)
puts Artist.most_prolific == art1
puts"Artist.most_prolific"

puts"Artist#create_painting"
newgal = Gallery.new("best gal", "charleston")
puts art2.paintings.size == 1
art2.create_painting("best", 30,newgal)
puts art2.paintings.size == 2
puts art2.paintings[0].title == "whoa"
puts art2.paintings[1].title == "best"
puts"Artist#create_painting"

puts"Painting.all"
puts Painting.all.size == 8
puts"Painting.all"

puts"Painting.total_price"
puts Painting.total_price == 10150
puts"Painting.total_price"


puts"Gallery.all"
puts Gallery.all.size == 3
puts"Gallery.all"


puts"Gallery#paintings"
puts newgal.paintings.size == 1
art2.create_painting("best", 30,newgal)
puts newgal.paintings.size == 2
puts"Gallery#paintings"

puts"Gallery#artists"
puts newgal.artists.size == 1
art1.create_painting("best", 30,newgal)
puts newgal.artists.size == 2
puts"Gallery#artists"

puts"Gallery#artist_names"
puts newgal.artist_names
puts"Gallery#artist_names"

puts"Gallery#most_expensive_painting"
puts gal.most_expensive_painting.price == 10000
puts"Gallery#most_expensive_painting"

#binding.pry

puts "Bob Ross rules."
