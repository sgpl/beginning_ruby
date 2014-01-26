
require 'yaml'

class Person
	attr_accessor :name, :age, :gender
end


fred = Person.new 
fred.name = "Fred Boggs"
fred.age = 45

laura = Person.new 
laura.name = "Laura Boggler"
laura.age = 25
laura.gender = "Female"

test_data = [ fred, laura]
puts YAML::dump(test_data)