# reflection:
# process by which computer program can inspect, analyze, and modify itself. 

a = "this is a test".capitalize
puts a.methods.join(' ')

puts a.methods

# methods method returns an array of methods made available by that object


class Person 
	attr_accessor :name, :age, :height
end

p = Person.new
p.name = "Fred"
p.age = 20 
puts p.instance_variables
puts p.inspect