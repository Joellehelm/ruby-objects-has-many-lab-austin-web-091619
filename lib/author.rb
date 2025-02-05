require_relative "post"
class Author
    attr_accessor :name, :posts

    def initialize(name)
        @name = name
       
    end

    def posts
        Post.all.select { |post| post.author == self}
    end

    def add_post(post)
      post.author = self
    end

    def add_post_by_title(title)
        tl = Post.new(title)
        tl.author = self
    end

    def self.post_count
        Post.all.count
    end


end