puts File.mtime("sample.txt")

# puts time when file was last modified. 

# can also do this: 

t = File.mtime("logfile.txt")
puts t.hour
puts t.min
puts t.sec


