
class Artist 
    attr_reader :name

    @@artists = []

    def initialize(name)
        @name = name
        save()
    end

    def save
        @@artists << self 
    end

    def self.all
        @@artists
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        songs().map {|song| song.genre}
    end

    def new_song(name, genre)
        name = Song.new(name, self, genre)
        name
    end
end 

# Artist
#   #name
#     has a name
#   .all
#     knows about all artist instances
#   #songs
#     returns all songs associated with this Artist
#   #new_song
#     given a name and genre, creates a new song associated with that artist
#   #genres
#     has many genres, through songs