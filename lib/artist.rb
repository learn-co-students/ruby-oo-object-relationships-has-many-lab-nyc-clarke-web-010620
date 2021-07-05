class Artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_accessor :name
    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end
    def add_song(song)
        #song = Song.new(song)
        song.artist = self
    end
    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end
    def self.song_count
        Song.all.count
    end
end