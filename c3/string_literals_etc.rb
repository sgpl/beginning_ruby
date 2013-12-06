puts "x" > "y" # returns boolean
puts "x" < "y" # returns boolean
# ^ characters are stored as numbers inside computer's memory. 

puts ?x # returns numbers that represents x
puts ?A # doesn't currently work
num1 = ?A

puts 120.chr
puts num1.chr

## read up more about this on: 

# http://en.wikipedia.org/ wiki/ASCII.

# string literals, etc 

xx = %q{
this is a multiline
string literal
}

yy = <<END_OF_STRING_LITERAL
this is a multiline
string literal
END_OF_STRING_LITERAL

puts "x" * 10


