class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        #iterates through all songs and finds the ones that belong to this instance of genre
        Song.all.select do |song_instance|
            song_instance.genre == self
        end
    end

    def artists
        #has many artist through songs, iterates over the genres collection of songs(from songs method) and collects the artist that owns each song
        songs.map do |song_instance|
            song_instance.artist
        end
    end

end