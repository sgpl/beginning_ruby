puts File.mtime("text.txt")

# puts time when file was last modified. 

# can also do this: 

t = File.mtime("text.txt")
puts t.hour
puts t.min
puts t.sec


