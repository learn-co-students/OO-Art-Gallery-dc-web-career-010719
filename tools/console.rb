require_relative '../config/environment.rb'

#Test Data
bob = Artist.new("Bob", 25)
renny = Artist.new("Renoir", 33)
george = Artist.new("G. Dub", 10)

met = Gallery.new("The Met", "New York, NY")
gugg = Gallery.new("The Guggenheim", "New York, NY")
louve = Gallery.new("The Louve", "Paris, France")
port = Gallery.new("The National Portait Gallery", "Washington, D.C.")


puts "* `Artist.all`
    * Returns an `array` of all the artists"
puts Artist.all.length == 3

puts " * `Artist#create_painting`
    * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist"
bob.create_painting("Little Tree", 50, met)
bob.create_painting("Another Little Tree", 35, port)

george.create_painting("On the Ranch", 40, met)
george.create_painting("This is Me", 10, port)

renny.create_painting("Life is a Mystery", 1000, louve)
renny.create_painting("The Pretty Flower", 3000, gugg)
renny.create_painting("Painting", 500, gugg)

puts "  * `Artist#paintings`
    * Returns an `array` all the paintings by an artist"
    puts bob.paintings.length == 2

puts "  * `Artist#galleries`
    * Returns an `array` of all the galleries that an artist has paintings in"
    puts bob.galleries.include?(met)

puts " * `Artist#cities`
    * Return an `array` of all cities that an artist has paintings in"
    puts renny.cities == []
    puts bob.cities.length == 2

puts " * `Artist.total_experience`
    * Returns an `integer` that is the total years of experience of all artists"
    puts Artist.total_experience == 68

puts " * `Artist.most_prolific`
    * Returns an `instance` of the artist with the highest amount of paintings per year of experience."
    puts Artist.most_prolific == george

puts "  * `Painting.total_price`
    * Returns an `integer` that is the total price of all paintings"
    puts Painting.total_price > 1000

 puts "  * `Gallery#paintings`
    * Returns an `array` of all paintings in a gallery"
    puts gugg.paintings.count == 2

  puts "  * `Gallery#artists`
    * Returns an `array` of all artists that have a painting in a gallery"
    puts louve.artists.count == 1

  puts "  * `Gallery#artist_names`
    * Returns an `array` of the names of all artists that have a painting in a gallery"
     puts louve.artist_names.include?("Renoir")

   puts "
  * `Gallery#most_expensive_painting`
    * Returns an `instance` of the most expensive painting in a gallery"
   puts gugg.most_expensive_painting.artist == renny

binding.pry

puts "Bob Ross rules."
