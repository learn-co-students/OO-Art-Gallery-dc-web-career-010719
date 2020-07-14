require_relative '../config/environment.rb'





phil = Artist.new("Phil", 5)
bob = Artist.new("Bob", 20)

big_gallery = Gallery.new("Big Gallery", "DC")
small_gallery = Gallery.new("Small Gallery", "Boston")
extra_gallery = Gallery.new("Extra Gallery", "LA")

puts phil.name == "Phil"
puts bob.years_experience == 20

puts big_gallery.name == "Big Gallery"
puts small_gallery.city == "Boston"

puts Artist.all.size == 2
puts Gallery.all.size == 3

puts Artist.total_experience == 25

phil.create_painting("Mona Lisa", 1000, big_gallery)
phil.create_painting("Starry Night", 2000, small_gallery)
phil.create_painting("American Gothic", 500, big_gallery)
phil.create_painting("The Scream", 500, extra_gallery)
bob.create_painting("Happy Trees", 200, big_gallery)

puts Painting.all.count == 5

puts Painting.total_price == 4200

puts phil.paintings.class
puts phil.paintings.size == 4

puts Artist.most_prolific.name

puts phil.galleries.size
puts bob.galleries.size

puts phil.cities.size == 3
puts phil.cities

puts " ----- "

puts big_gallery.paintings.size == 3
puts small_gallery.paintings.size == 1

puts big_gallery.artists.size == 2
# puts big_gallery.artists

puts big_gallery.artist_names

puts big_gallery.most_expensive_painting.title == "Mona Lisa"


# binding.pry

puts "Bob Ross rules."





# Artist.all
# Returns an array of all the artists
# Artist#paintings
#
# Returns an array all the paintings by an artist
# Artist#galleries
#
# Returns an array of all the galleries that an artist has paintings in
# Artist#cities
#
# Return an array of all cities that an artist has paintings in
# Artist.total_experience
#
# Returns an integer that is the total years of experience of all artists
# Artist.most_prolific
#
# Returns an instance of the artist with the highest amount of paintings per year of experience.
# Artist#create_painting
#
# Given the arguments of title, price and gallery, creates a new painting belonging to that artist
# PAINTING
#
# Painting.all
#
# Returns an array of all the paintings
# Painting.total_price
#
# Returns an integer that is the total price of all paintings
# GALLERY
#
# Gallery.all
#
# Returns an array of all the galleries
# Gallery#paintings
#
# Returns an array of all paintings in a gallery
# Gallery#artists
#
# Returns an array of all artists that have a painting in a gallery
# Gallery#artist_names
#
# Returns an array of the names of all artists that have a painting in a gallery
# Gallery#most_expensive_painting
#
# Returns an instance of the most expensive painting in a gallery
