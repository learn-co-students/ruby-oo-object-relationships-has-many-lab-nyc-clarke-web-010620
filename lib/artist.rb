class Artist
    def initialize(name)
        @name = name
    end

    attr_accessor :name, :songs


    def songs
        Song.all.select do |song|
            song.artist = self
        end

    end

    def add_song(song)
        song.artist == self
    end


    def add_song_by_name(song)
        track = Song.new(song)
        track.artist = self
    end

    def self.song_count
        Song.all.length
    end





end
