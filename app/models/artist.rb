class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Song.first.genre 
  end

  def song_count
    #return the number of songs associated with the artist
    Song.artist.songs.count 
  end

  def genre_count
    #return the number of genres associated with the artist
  end
end
