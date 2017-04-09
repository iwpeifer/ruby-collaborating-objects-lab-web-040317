class MP3Importer

	attr_accessor :path
	#attr_reader :files

	def initialize(file_path)
		@path = file_path
		#@files
	end

	def files
		Dir.entries(@path)[2..-1]
		# @files = Dir["#{@path}/*"]
		# @files.map!{|file| file.split("mp3s/")}
		# @files.each {|file| file.shift}.flatten!
		# @files
	end

	def import
		files.each {|file| Song.new_by_filename(file)}
	end

end