class Artist 

    attr_accessor :name, :artist 

    def initialize(name)
        @name = name
        @songs = []
    end 

    def songs 
        Song.all.select {|song| song.artist == self}
    end 

    def add_song(song)
        @songs << song 
        song.artist = self 
    end 

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self 
    end

    def self.song_count
        Song.all.count
    end 

    def save
        @@all << self 
    end 

    def self.all 
        @@all 
    end 



end 