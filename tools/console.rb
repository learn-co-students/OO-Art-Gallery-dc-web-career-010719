require_relative '../config/environment.rb'




james = Artist.new("James", 1)
will = Artist.new("Will", 2)
jourdan = Artist.new("Jourdan", 3)
johnny = Artist.new("Johnny", 4)
haley = Artist.new("Haley", 5)


oct = Gallery.new("Octagon", "Fairfax")
non = Gallery.new("Nonagon", "Vienna")
dec = Gallery.new("Decagon", "Arlington")

j1 = james.create_painting("un", 100, oct)
will.create_painting("uds", 200, non)
haley.create_painting("udsss", 1000, dec)
j2 = james.create_painting("po", 34, oct)
haley.create_painting("udssdss", 10000, non)

puts Artist.all == [james, will, jourdan, johnny, haley]
puts james.paintings == [j1,j2]







binding.pry

puts "Bob Ross rules."
