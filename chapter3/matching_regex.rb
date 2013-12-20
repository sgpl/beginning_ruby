_xxx = "the quick brown fox jumps over the lazy dog"

puts "string has vowels" if "this is a test" =~ /[aeiou]/
puts "This string has all the alphabets" if _xxx =~/[a-z]/


puts "string contains no digits" unless "this txt" =~/0-9]/


puts "string has vowels" if _xxx.match(/[aeiou]/)

### this bit of code is not quite clear. 
# need to review what is happening here. 

x = "This is a test".match(/(\w+) (\w+)/)
puts x
puts x[0]
puts x[1]
puts x[2]
puts x[3]

puts "----"

xx = "This is a test".match(/(\w+)(\w+)/)
puts xx
puts xx[0]
puts xx[1]
puts xx[2]
puts xx[3]