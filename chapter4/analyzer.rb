# analyzer.rb -- Text Analyzer
# v0.4

lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join()
stop_words = %w{the a by on for of are with just but and to the my I has some in}

# counting characters:
char_count = text.length
char_nospace = text.gsub(/\s+/,'').length

# counting words, sentences, paragraphs:
# word_count = 0 
# text.scan(/\w+/) {|match| word_count += 1}
act_word_count = text.split.length

sentence_count = 0 
text.scan(/\.|\?|!/) { |match| sentence_count += 1}

paragraph_count = text.split(/\n\n/).length

# list of words in text that aren't stop words. 
total_words = text.scan(/\w+/)
interesting_words = total_words.select { |word| !stop_words.include?(word) }

# summary of text:
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/  }

# analysis to user: 
puts "#{line_count}  Lines"
puts "#{char_count} Characters"
puts "#{char_nospace} Characters (excluding spaces)" 
puts "#{act_word_count} Word Count"
puts "#{sentence_count} Sentences"
puts "#{paragraph_count} Paragraphs"
puts "#{act_word_count/sentence_count} Words per Sentence"
puts "#{sentence_count/paragraph_count} Sentences per Paragraph"
puts "#{(interesting_words.length.to_f / act_word_count) * 100} % Interesting Words Percentage"
puts "Summary:\n\n" + ideal_sentences.join(".") + "."
puts "----x----x---- end of analysis ----x----x----"

# -------------------
# -------------------
# #v0.3
# # lines = File.readlines(ARGV[0])
# # TO RUN $: ruby analyzer.rb text.txt
# lines = File.readlines("text.txt") 
# # using File's builtin method vs the codeblock
# # reads entire file into an array. 
# line_count = lines.size
# text = lines.join()
# char_count = text.length
# # text_wo_spaces = text.gsub(' ','') # text.gsub(/pattern/, 'Replace')
# # ^ this is what i had, but it was displaying the wrong result because
# # i was replacing only single spaces, not '  ' or '        ', etc. 
# char_nospace = text.gsub(/\s+/,'').length

# sentence_count = 0 
# text.scan(/\.|\?|!/) { |match| sentence_count += 1}
# # need to escape . and ? with \ to avoid errors as . is anychar in regular exp.
# # initially i had just used \. and forgotten the \? or !
# # also book uses text.split(/\.|\?|!/).length which is shorter i guess.
# # puts "Test code! It works. Does it? Yes.".split(/\.|\?|!/).length 

# word_count = 0 
# text.scan(/\w+/) {|match| word_count += 1}
# act_word_count = text.split.length


# puts "#{line_count}  Lines"
# puts "#{char_count} Characters"
# puts "#{char_nospace} Characters (excluding spaces)" 
# puts "#{word_count} Words"
# puts "#{sentence_count} Sentences"
# puts "#{text.split.length} Actual Word Count"

# paragraph_count = text.split(/\n\n/).length
# puts "#{paragraph_count} Paragraphs"
# puts "#{act_word_count/sentence_count} Words per Sentence"
# puts "#{sentence_count/paragraph_count} Sentences per Paragraph"

# # array of stop_words
# stop_words = %w{the a by on for of are with just but and to the my I has some in}
# total_words = text.scan(/\w+/)
# interesting_words = total_words.select { |word| !stop_words.include?(word) }

# puts "#{interesting_words.length} Interesting Words"
# puts "#{(interesting_words.length.to_f / act_word_count) * 100} % Interesting Words Percentage"
# -------------------
# -------------------





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