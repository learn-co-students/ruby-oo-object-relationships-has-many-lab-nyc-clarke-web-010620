class Song
    def initialize(name)
        @name = name
        @artist = nil
        self.class.all << self
    end

    @@all = []

    def self.all
        @@all
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end



    attr_accessor :name, :artist
end