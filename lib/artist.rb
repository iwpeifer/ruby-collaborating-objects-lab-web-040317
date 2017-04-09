class Artist

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		save
	end

	def songs
		@songs
	end

	def self.all
		@@all
	end

	def save
		@@all << self
	end


	def self.find_or_create_by_name(name)
    @@all.each do |artist|
      return artist if artist.name == name
    end
    self.new(name)
  end

	def add_song(song)
		@songs << song
		#song.artist = self
	end

	def print_songs
		self.songs.each {|song| puts song.name}
	end

end