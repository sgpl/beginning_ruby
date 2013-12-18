
# with scan we initially used a block of code that accept each char
# and displayed them on the screen. 

# scan WITHOUT a block of code returns an array of all the matching parts 
# of a string, so:

puts "this is a test".scan(/\w/).join(',')

# --------

x = "this is a test".scan(/\w/).join(',')

print x 


puts "Short sentence. Another. No More.".split(/\./).inspect

puts "words with lots of spaces".split(/\s+/).inspect
