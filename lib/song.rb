class Song
    attr_reader :name, :artist, :genre

    @@songs = []
   
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        save()
    end

    def save
        @@songs << self
    end

    def self.all
        @@songs
    end
end


# Song
#   #new
#     initializes with a name, an artist, and a genre
#   .all
#     knows about all song instances
#   #genre
#     belongs to a genre
#   #artist
#     belongs to a artist
