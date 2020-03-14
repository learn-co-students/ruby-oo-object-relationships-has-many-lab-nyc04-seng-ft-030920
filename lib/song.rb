class Song
    attr_accessor :name, :artist
    # name of song
    @@all = []
    # song w artist
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        artist.name if artist
    end
end