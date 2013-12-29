# File.open("dummy_data.txt").each { |line| puts line  }


File.open("dummy_data.txt").each do |line| 
	print line.split(','), "\n"
	
end

