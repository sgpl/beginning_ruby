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


# also for stuff like:
#this: data = File.open(filename).read, 
# can be written as this:
data = File.read(filename)

# can also do this:
array_of_lines = File.readlines(filename)


# file.pos 	=> gives position of pointer in the file... refer gp 210
# can also assign a position, so file.pos = 10; puts file.pos OR gets file.pos
