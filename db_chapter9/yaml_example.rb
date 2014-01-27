# # yaml example
# require 'yaml'

# class Person
# 	attr_accessor :name, :age, :gender
# end


# fred = Person.new 
# fred.name = "Fred Boggs"
# fred.age = 45

# laura = Person.new 
# laura.name = "Laura Boggler"
# laura.age = 25
# laura.gender = "Female"


# betty = Person.new 
# betty.name = "Betty Morgan"
# betty.age = 27
# betty.gender = "Female"

# test_data = [ fred, betty, laura]
# puts YAML::dump(test_data)

# --------------------

require 'yaml'

class Person
	attr_accessor :name, :age, :gender
end


yaml_string = <<END_OF_DATA
---
- !ruby/object:Person
  age: 45
  name: Jimmy
- !ruby/object:Person
  age: 23
  name: Jessica Smith
END_OF_DATA

test_data2 = YAML::load(yaml_string)
puts test_data2[0].name
puts test_data2[0].age
puts test_data2[1].name