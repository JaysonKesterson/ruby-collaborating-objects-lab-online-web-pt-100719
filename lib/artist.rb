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