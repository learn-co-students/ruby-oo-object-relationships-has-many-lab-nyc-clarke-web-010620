class Post
    @@all = []
    def initialize(title)
        @title = title
        @author = author
        @@all << self
    end
    attr_accessor :title, :author
    def author_name
        self.author.name if @author
    end
    def self.all
        @@all
    end
end