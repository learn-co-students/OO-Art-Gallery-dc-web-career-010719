require_relative '../config/environment.rb'

gallery1 = Gallery.new("Rainbow", 'Washington')
gallery2 = Gallery.new("George Washington", 'Chicago')
artist1 = Artist.new('Hai', 5)
artist2 = Artist.new("Nathan", 10)
artist3 = Artist.new("Vince", 6)
artist1.create_painting('MonaLisa', 500, gallery1)
artist1.create_painting('TheScream', 5000, gallery1)
artist1.create_painting("Sunset", 1000, gallery1)
artist1.create_painting("Sunny", 9000, gallery2)
artist2.create_painting('Lame', 600, gallery1)
artist2.create_painting('IceCream', 6000, gallery1)
artist2.create_painting("Sunrise", 2000, gallery1)
artist3.create_painting('Lava', 700, gallery1)
artist3.create_painting('Cool', 7000, gallery1)
artist3.create_painting("Ocean", 3000, gallery1)


binding.pry

puts "Bob Ross rules."
