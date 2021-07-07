class Author 
    attr_accessor :name, :posts

    @@posts = []
    def initialize(name)
        @name = name 
    end 

    def self.posts 
        @@posts
    end
    
    def posts
        Post.all.select do |post|
            post.author = self 
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
        Post.all.count 
    end 
end 