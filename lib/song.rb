class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
    def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genre_count
    counter = 0 
    genre_counter = {}
    @@genres.each do |g|
     genre_counter[g] = counter
     if genre_counter[g].include? == g
       counter += 1 
       genre_counter[g] = counter
    end
  end
  genre_counter
end
end