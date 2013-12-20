
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

sentence_count = 0 
text.scan(/\.|\?|!/) { |match| sentence_count += 1}
# need to escape . and ? with \ to avoid errors as . is anychar in regular exp.
# initially i had just used \. and forgotten the \? or !
# also book uses text.split(/\.|\?|!/).length which is shorter i guess.
# puts "Test code! It works. Does it? Yes.".split(/\.|\?|!/).length 

word_count = 0 
text.scan(/\w+/) {|match| word_count += 1}
act_word_count = text.split.length


puts "#{line_count}  Lines"
puts "#{char_count} Characters"
puts "#{char_nospace} Characters (excluding spaces)" 
puts "#{word_count} Words"
puts "#{sentence_count} Sentences"
puts "#{text.split.length} Actual Word Count"
paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} Paragraphs"
puts "#{act_word_count/sentence_count} Words per Sentence"
puts "#{sentence_count/paragraph_count} Sentences per Paragraph"

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


_new_var = text.gsub(/\s+/,'')
counter = 0 
_new_var.scan(/\./) { |match| puts match;counter += 1  }
puts counter
# ^ counting the number of sentences. 

_str1 = "this is a level-headed decision"
_str1.scan(/\w+/).length  => 6 # counts alphanumeric characters. 
_str1.split.length  => 5



=end