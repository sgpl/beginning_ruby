text = %q{
Ruby is a great programming language. It is object oriented
and has many groovy features. Some people don't like it, but that's
not our problem! It's easy to learn. It's great. To learn more about Ruby,
visit the official Ruby Web site today.
}

# text = File.readlines("text.txt").join()


# .gsub replaces large white spaces with single white space
# .strip, strips white spaces from start and end of string. 

sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3 
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/  }
puts ideal_sentences.join(". ")





# p sentences
# puts 
# p sentences_sorted.length
# puts
# p one_third

=begin 
new stuff: 

.strip.split
.sort_by {|param| .length}
.slice

=end