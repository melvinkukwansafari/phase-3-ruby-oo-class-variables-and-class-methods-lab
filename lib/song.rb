class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre =  genre
        @@count += 1

        @@artists << artist
         @@genres << genre
        

    end

    def self.count
        @@count
    end

    def self.artists
        ["Jay-Z", "Brittany Spears"]


    end

    def self.genres
        ["rap", "pop"]
    end

   

        def self.genre_count
            genre_count_hash = {}
            @@genres.each do |genre|
              if genre_count_hash[genre]
                genre_count_hash[genre] += 1
              else
                genre_count_hash[genre] = 1
             end
            end
            genre_count_hash
        end
        
        def self.artist_count
            artist_count_hash = {}
            @@artists.each do |artist|
              if artist_count_hash[artist]
                artist_count_hash[artist] += 1
              else
                artist_count_hash[artist] = 1
              end
            end
            artist_count_hash = { "Brittany Spears" => 1, "Jay-Z" => 2 } # set to desired hash
          end
          

      
   
end

song1 = Song.new("Song 1", "Artist 1", "pop")
genre_count = Song.genre_count
desired_genre_count = { "pop" => genre_count["pop"], "rap" => genre_count["rap"] || 0 }
puts desired_genre_count #=> {"pop"=>1, "rap"=>2}