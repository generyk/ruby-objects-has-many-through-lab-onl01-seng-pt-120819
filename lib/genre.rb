class Genre
    
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end 

  def songs
    Song.all.select {|song| song.genre == self}
  end 

  def self.all
    @@all
  end

  def artists 
    songs.map {|artist| artist.artist}
  end 

end