
#v0.3
lines = File.readlines("text.txt") 
# using File's builtin method vs the codeblock
# reads entire file into an array. 
line_count = lines.size
text = lines.join()
char_count = text.length
# text_wo_spaces = text.gsub(' ','') # text.gsub(/pattern/, 'Replace')
# ^ this is what i had, but it was displaying the wrong result because
# i was replacing only single spaces, not '  ' or '        ', etc. 
char_nospace = text.gsub(/\s+/,'').length


puts "#{line_count}  Lines"
puts "#{char_count} Characters"
puts "#{char_nospace} Characters (excluding spaces)" 

=begin

# v0.0 this passes each line to the code block and put each line on the screen. 
File.open("text.txt").each { |line| puts line }

# v0.1 this counts line count. 
line_count = 0 
File.open("text.txt").each { |line| line_count += 1 }
puts line_count

# v0.2
text = ''
line_count = 0 
File.open("text.txt").each do |line| 
	line_count += 1 
	text << line 
	# 	text variable contains entire file contents 
	# 	in a single line to use. 
end


=end