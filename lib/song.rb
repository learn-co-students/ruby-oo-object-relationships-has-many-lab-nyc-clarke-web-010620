class Song
    @@all = []
    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end
    attr_accessor :name, :artist
    def artist_name
        self.artist.name if @artist
    end
    def self.all
        @@all
    end
end