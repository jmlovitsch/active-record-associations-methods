class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.all.count # return the number of songs in a genre
  end

  def artist_count
    self.artists.all.count# return the number of artists associated with the genre
  end

  def all_artist_names
    self.artists.map {|k| k.name} # return an array of strings containing every musician's name
  end
end
