=begin
The File class is used as an abstraction to access and handle 
file objects that can be accessed from a Ruby program	
	
=end

# opening and reading

# File.open("nameOfFile.txt").each {|line| puts line

# File.new("text.txt", "r").each { |line| puts line }

=begin
For opening and reading files, File.new and File.open appear identical,
 but they have different uses. File.open can accept a code block, 
 and once the block is finished, the file will be closed automatically. 
 However, File.new only returns a File object referring to the file. 
 To close the file, you have to use its close method. 		
=end

File.open("sample.txt") do |f|
	puts f.gets
end

f2 = File.new("sample.txt", "r")
puts f2.gets
f2.close

class MyFile
	attr_reader :handle

	def initialize(filename)
		@handle = File.new(filename, "r")
	end

	def finished
		@handle.close
	end

end

f3 = MyFile.new("sample.txt")
puts f3.handle.gets
f3.finished