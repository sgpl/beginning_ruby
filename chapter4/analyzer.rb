# opening file:







=begin

File.open("text.txt").each { |line| puts line }
# v0.0 this passes each line to the code block and put each line on the screen. 

line_count = 0 
File.open("text.txt").each { |line| line_count += 1 }
puts line_count
# v0.1 this counts line count. 

=end