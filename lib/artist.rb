class Artist 
 attr_accessor :name, :songs


 def initialize(artist_name)
   @name = artist_name
   @songs = []
 end
 
 def songs
  Song.all.select{|song|song.artist==self}
end 

def add_song(song)
  @songs << song 
  song.artist = self
end 

def add_song_by_name(song_name)
  song = Song.new(song_name)
  @songs << song 
  song.artist = self
end 

def song_count
end 
end




# has many songs (FAILED - 1)
#   #add_song
#     takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist (FAILED - 2)
#   #add_song_by_name
#     takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 3)
#   .song_count
#     is a class method that returns the total number of songs associated to all existing artists (FAILED - 4)
