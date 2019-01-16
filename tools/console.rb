require_relative '../config/environment.rb'

ok_gallery = Gallery.new("OK Gallery", "Brooklyn")
awesome_gallery = Gallery.new("Awesome Gallery", "Manhattan")
really_bad_gallery = Gallery.new("Really Bad Gallery", "Little Rock")

ok_artist = Artist.new("OK Artist", 6)
awesome_artist = Artist.new("Awesome Artist", 4)
really_bad_artist = Artist.new("Really Bad Artist", 14)

awesome_artist.create_painting("No", 45000, awesome_gallery)
awesome_artist.create_painting("Yes", 75000, awesome_gallery)
awesome_artist.create_painting("Untitled", 960000, awesome_gallery)
awesome_artist.create_painting("Untitled 2", 970000, awesome_gallery)
awesome_artist.create_painting("Titled", 5500000, awesome_gallery)
ok_artist.create_painting("The Warrior", 8300, ok_gallery)
ok_artist.create_painting("Extravagance on Canvas", 5400, ok_gallery)
ok_artist.create_painting("Baby on Canvas", 4300, ok_gallery)
ok_artist.create_painting("Fruit on Canvas", 3400, ok_gallery)
ok_artist.create_painting("Guy on Canvas", 5500, ok_gallery)
really_bad_artist.create_painting("Picture of Flower", 55, really_bad_gallery)
really_bad_artist.create_painting("Picture of Cat", 49, really_bad_gallery)
really_bad_artist.create_painting("Picture of Building", 60, really_bad_gallery)
really_bad_artist.create_painting("Picture of Car", 52, really_bad_gallery)
really_bad_artist.create_painting("Picture of Camera", 35, really_bad_gallery)
really_bad_artist.create_painting("Selfie", 6, really_bad_gallery)
really_bad_artist.create_painting("Picture of Random Room", 35, really_bad_gallery)



binding.pry

puts "Bob Ross rules."
