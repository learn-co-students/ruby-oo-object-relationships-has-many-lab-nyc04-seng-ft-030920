class Author
attr_accessor :name, :posts

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|posts| posts.author == self}
    end

    def add_post(post_inst)
        post_inst.author = self
    end

    def add_post_by_title(title)
        title = Post.new(title)
        add_post(title)
    end

    def self.post_count
        Post.all.count
    end

end