require 'pry'
require_relative './post.rb'
class Author

    attr_accessor :name, :posts
    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end

    def all
        @@all
    end

    def posts
        Post.all.select do |posts|
            posts.author == self
        end
    end


    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        post1 = Post.new(post_title)
        post1.author = self
    end

    def self.post_count
        Post.all.length
    end

end