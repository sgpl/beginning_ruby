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
# one_third is just one thirs of length of array sentences_sorted. 

# slice cuts out sentences_sorted from the index[one_third] to index[one_third+1]
# and stores it in ideal sentences.  
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)

# now we only keep sentences that have is or are in them. 
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