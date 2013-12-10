# reg_exp

# essentially a search query. 
# ex: when you search 'ruby' in a search engine, you get something returned. 


# it is a string that describes a patter for matching elements in other strings. 

# substitution 

puts "foobar".sub('bar', 'foo')
puts "foobar".sub('bar', 'apple')
puts 'foobar'.sub("bar", 'foo')# quotes '," don't seem to have an effect.

# .sub >> only substitutes the first instance. 

# .gsub substitutes all instances. 

puts "hello my name is sharad gopal, and i'm writing this".gsub('a', 'PPP')

# a more complex pattern
x = "This is a test"
puts x.sub(/^.../,'Hello') # dots represent the chars, so: 
puts x.sub(/^../,'Hello')

puts x.sub(/..$/,'Hello') # last two chars
