class Author

    attr_accessor :name, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        Post.all
    end

    def self.post_count
        # .post_count is a class method that
        # returns the total number of posts associated 
        # to all existing authors
        Post.all.count
    end

    

    def add_post(post)
        @posts << post
        post.author = self

    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        add_post(new_post)
    end

    def post_count

    end

end