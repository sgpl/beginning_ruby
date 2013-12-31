f = File.new("logfile.txt", "a")
10.times do 
	f.puts Time.now
	sleep 3
	f.close
end

