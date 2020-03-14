require 'pry'
class Artist
    attr_accessor :name
    # name of artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song_by_name(song)
        Song.new(song).artist = self
    end

    def self.song_count
        Song.all.length
    end
end