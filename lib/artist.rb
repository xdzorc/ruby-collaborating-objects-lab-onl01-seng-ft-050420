class Artist 
  attr_accessor :name
  @@all=[]
  
  def initialize(name=nil)
    @name =name
    @@all << self
  
  end
  
  def self.all 
    @@all
  end
  
  def add_song(song)
    song.artist =self
  end
  
  def songs 
    Song.all.select {|song| song.artist ==self}
  end
  
  def self.find_or_create_by_name(name)
    artist=self.all.find {|artist| artist.name==name}
    if artist
      artist
    else
      new_artist=Artist.new(name)
    end
  end
  
 
  def print_songs 
    self.songs.each do |song|
      puts song.name
    end
  end

end

