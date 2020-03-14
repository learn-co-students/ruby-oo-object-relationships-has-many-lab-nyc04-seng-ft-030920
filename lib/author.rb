class Author

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_post(post)
        post.author = self
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post_by_title(post)
        Post.new(post).author = self
    end

    def self.post_count
        Post.all.length
    end
end