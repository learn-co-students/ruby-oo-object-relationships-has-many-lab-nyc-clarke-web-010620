class Author
    def initialize(name, test = nil)
        @name = name
    end

    def posts
        Post.all.select do |posts|
            posts.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
    end

    def self.post_count
        Post.all.length
    end



    attr_accessor :name
end
