class Song 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
   def artist_name
    artist.name if artist
  end
  
end 