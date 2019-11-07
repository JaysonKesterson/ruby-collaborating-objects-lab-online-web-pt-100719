# class Artist
  
#   attr_accessor :name, :songs
#   @@all = []
  
#   def initialize(name)
#     @name = name
#     @songs = []
#     @@all << self
#   end
  
#   def self.all
#     @@all.uniq
#   end 
  
#   def songs 
#     @songs
#   end
  
#   def add_song(song)
#     self.songs << song
#   end
  
#   def save 
#     @@all << self
#     self
#   end 
  
#   def self.find_or_create_by_name(name)
#     self.all.find{|artist| artist.name == name} || self.new(name).save
#   end
  
#   def print_songs
#     @songs.each do |song|
#       puts song.name
#     end
#   end
# end

class Artist

  attr_accessor :name

  @@all = [] 

  def initialize(name)#artist_name
    @name = name
    @songs = [] 
  end

  def songs
    Song.all.select{|song| song.artist == self}
    end
    
  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end


  def self.find(name)
    @@all.find do |artist|
      artist.name == name
    end
  end

  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end



  def save
    @@all << self
  end

  def print_songs()
    puts @songs.collect {|x| x.name}
  end

end