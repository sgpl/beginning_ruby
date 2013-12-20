x = {'a' => 1, 'b' => 2, 'c' => 3, 'y' => 'zebra'}
x.each {|key, value| puts "#{key} equals #{value}"}

# each iterator passes two parameter to code block, 
# we assign them to variables called key and value

# retrieving keys:

p x.keys

# can also look at values
p x.values

# deleting hash elements

x.delete('b')

p x 

## deleting hash elements conditionally:

n_hash = {"a" => 100, "b" => 28, "c" => 93, "d" => 14}
n_hash.delete_if {|key, value| value < 30}
p n_hash