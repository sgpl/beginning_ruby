=begin
hashes, like arrays are collections of objects, 
they use a different storage format and ways to define each object 
within the collection.  {key => value} pairs	
=end

dictionary = {'cat' => 'feline animal', 'dog' => 22, 'mouse' => 'cat food'}
puts dictionary.size
puts dictionary.length

p dictionary

puts dictionary['cat']
dictionary['mango'] = 'yellow fruit'

p dictionary

# both keys and values can be objects of any type. 
# so it's possible to use an array or even another hash as a key

