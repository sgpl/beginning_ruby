# File.open("dummy_data.txt").each { |line| puts line  }


File.open("dummy_data.txt").each do |line| 
	print line.split(','), "\n"
	# print line.split(',')[0], " is a ", line.split(',')[1], ". Gender: ", line.split(',')[2], " and age:  ",line.split(',')[3], "\n"
	
end

File.open("dummy_data.txt").each('a') {|line| puts line}

# File.open("dummy_data.txt").each_byte {|byte| puts byte}

File.open("dummy_data.txt").each_char {|byte| puts byte}


File.open("dummy_data.txt") do |file| 
	2.times { puts file.gets}
end


puts File.open("dummy_data.txt").readlines.join("--")