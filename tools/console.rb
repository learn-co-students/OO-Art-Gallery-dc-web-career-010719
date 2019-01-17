require_relative '../config/environment.rb'

artem = Artist.new("Artem", 8)
shannon = Artist.new("Shannon", 60)
ryan = Artist.new("Ryan", 18)
phil = Artist.new("Phil", 15)
ben = Artist.new("Ben", 21)
matt = Artist.new("Matt", 11)
mod1 = Gallery.new(name:"Mod 1 Art Gallery", city:"DC")
flatiron = Gallery.new(name:"Flatiron Art Gallery", city:"NYC")

artem.create_painting(price:900, title:"Tater Tots", gallery:mod1)
ben.create_painting(price:810, title:"The View from Table 6", gallery:mod1)
matt.create_painting(title:"Matt's Facebook Feed: A Collage", price:1000, gallery:mod1)
phil.create_painting(title:"Let's Not Get Too Crazy Here", price:1000, gallery:mod1)
shannon.create_painting(price:890, gallery:flatiron, title:"I Have Some Feedback For You")
phil.create_painting(title:"Go Celtics", price:520, gallery:flatiron)
shannon.create_painting(title:"Table 6: A Retrospective", price:1550, gallery:flatiron)


binding.pry

puts "Table 6 rules"
