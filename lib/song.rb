class Song
  
  attr_accessor :artist, :name
@@all=[]

def initialize(song_name)
  @name = song_name
  @@all << self
end

def self.all
  @@all 
end 


def artist_name
  if self.artist.nil?
    nil
    else 
     self.artist.name
  end
end
end


# it 'knows the name of its artist' do
#       drake = Artist.new('Drake')
#       song.artist = drake
#       expect(song.artist_name).to eq('Drake')
#     end

#     it 'returns nil if the song does not have an artist' do
#       expect(song.artist_name).to eq nil