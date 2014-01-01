f = File.new("logfile.txt", "a")
10.times do 
	f.puts Time.now
	f.puts "\n"
	sleep 3
end

f.close

# 'a' appends a line to the file. 
# 