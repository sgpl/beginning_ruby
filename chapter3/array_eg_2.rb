
# with scan we initially used a block of code that accept each char
# and displayed them on the screen. 

# scan WITHOUT a block of code returns an array of all the matching parts 
# of a string, so:

puts "this is a test".scan(/\w/).join(',')

# --------

x = "this is a test".scan(/\w/).join(',')

print x 
puts " "

puts "this is a test".scan(/\w/).inspect


puts "Short sentence. Another. No More.".split(/\./).inspect

puts "words with lots of spaces".split(/\s+/).inspect

# inspect at the end displays an array for us to inspect?
# inspect works with scan and split.
# (inspect) is common to all built in classes in ruby 
# it gives us textual representation of the object. 

# we can also use 'p' to display the structure of the objects returned
# by the expression following it. 


p "this is a test".scan(/\w/)
