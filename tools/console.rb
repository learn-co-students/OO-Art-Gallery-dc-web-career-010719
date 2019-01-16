require_relative '../config/environment.rb'

# binding.pry

artist1 = Artist.new("Sol LeWit", 2)
artist2 = Artist.new("R. Mutt", 4)

gallery1 = Gallery.new("ok gallery", "some city")
gallery2 = Gallery.new("bad gallery", "another city")

painting1 = artist1.create_painting("great painting", 100, gallery1)
painting2 = artist2.create_painting("awful painting", 8888, gallery2)
painting3 = artist1.create_painting("good painting", 1, gallery1)

print "Artist.all: "
puts Artist.all == [artist1, artist2]

print "Artist#paintings: "
puts artist1.paintings == [painting1, painting3]
puts artist2.paintings == [painting2]

print "Artist#galleries: "
puts artist1.galleries == [gallery1]
puts artist2.galleries == [gallery2]

print "Artist.total_experience: "
puts Artist.total_experience == artist1.years_experience + artist2.years_experience

print "Artist.most_prolific: "
puts Artist.most_prolific == artist1

print "Painting.all: "
puts Painting.all == [painting1, painting2, painting3]

print "Painting.total_price: "
puts Painting.total_price == painting1.price + painting2.price + painting3.price

print "Gallery#paintings: "
puts gallery1.paintings == [painting1, painting3]

print "Gallery#artists: "
puts gallery1.artists == [artist1]

print "Gallery#artist_names: "
puts gallery1.artist_names == [artist1.name]

print "Gallery#artist_names: "
puts gallery1.artist_names == [artist1.name]

print "Gallery#most_expensive_painting: "
puts gallery1.most_expensive_painting == painting1
puts gallery2.most_expensive_painting == painting2