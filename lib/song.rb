class Song
  def intialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@song_count += 1
    @@song_artists <<  @artist
    @@song_genres << @genre
    
  end
  
  def self.count
    @@song_count
  end
  
  @@song_count = 0
  @@song_artists = []
  @@song_genres = []
  @@song_genre_count = {}
  @@song_artist_count = {}
    
  attr_accessor :name, :artist, :genre
  

  
  def self.artists
    @@song_artists & @@song_artists
  end
  
  def self.genres
    @@song_genres & @@song_genres
  end
  
  def self.genre_count
    @@song_genres.each do |genre|
      @@song_genre_count[genre] ||= 0
      @@song_genre_count[genre] += 1
    end
    @@song_genre_count
  end
  
  def self.song_count
    @@song_artist_count
  end
    
end