# File.open("dummy_data.txt").each { |line| puts line  }


File.open("dummy_data.txt").each do |line| 
	print line.split(','), "\n"
	# print line.split(',')[0], " is a ", line.split(',')[1], ". Gender: ", line.split(',')[2], " and age:  ",line.split(',')[3], "\n"
	
end

