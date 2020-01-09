require 'pry'
require_relative './song.rb'
class Artist

    attr_accessor :name, :songs
    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end

    def all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end


    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song1 = Song.new(song_name)
        song1.artist = self
    end

    def self.song_count
        Song.all.length
    end

end