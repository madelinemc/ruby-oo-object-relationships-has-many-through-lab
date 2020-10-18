require 'pry'
class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        #creates new song
        song = Song.new(name, self, genre)
    end

    def songs 
        #iterate through all songs and find the songs that beong to this artist instance
        Song.all.select do |song_instance|
            song_instance.artist == self
        end
    end

    def genres
        #has many genres through songs, iterates over the artists songs from songs method and collects the genre of each song
        songs.map do |song_instance|
            song_instance.genre
        end
    end

end