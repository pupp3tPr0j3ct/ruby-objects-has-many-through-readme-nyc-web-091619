require 'pry'
require_relative "lib/movie.rb"
require_relative "lib/role.rb"
require_relative "lib/actor.rb"

movie1 = Movie.new("Hustle and flow", 2005)
movie2 = Movie.new("Ender's game", 2013)
movie3 = Movie.new("The Secret Life of Walter Mitty",2013)
movie4 = Movie.new("Star Wars", 1977)
actor1 = Actor.new("Ben", "Stiller", 53)
actor2 = Actor.new("Kristen", "Wiig", 46)
actor3 = Actor.new("Harrison", "Ford", 77)
actor4 = Actor.new("Terence", "Howard", 50)

# role = actor, movie, character
role1 = Role.new(actor1, movie3,"Walter Mitty")
role2 = Role.new(actor2, movie3,"Cheryl Mellhoff")
role3 = Role.new(actor3, movie2,"Hyrum Graff")
role4 = Role.new(actor4, movie1,"DJay")
role4 = Role.new(actor3, movie4,"Han Solo")

binding.pry