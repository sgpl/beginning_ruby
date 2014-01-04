f = File.new("test.txt", "r+")
f.seek(-5, IO::SEEK_END)
f.putc "X"
f.close

=begin
IO::SEEK_CUR: Seeks a certain number of bytes ahead of the 
	current position.

IO::SEEK_END: Seeks to a position based on the end of the file. 
	This means that to seek to a certain position from the end of 
	the file, you’ll probably need to use a negative value.

IO::SEEK_SET: Seeks to an absolute position in the file. This is 
	identical to pos=.

=end

# to print every 5th character in a file.

f = File.new("test.txt", "r")
while a = f.getc
	puts a.chr
  	f.seek(5, IO::SEEK_CUR)
end


