require 'pry'
require_relative './author.rb'
require_relative './post.rb'
require_relative './artist.rb'
require_relative './song.rb'

a1 = Artist.new("Adele")

s1 = Song.new("Hello")

binding.pry
puts "DoReMi"