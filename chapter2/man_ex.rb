class Person
	attr_accessor :name, :age, :gender, :height
end

=begin
- class 
	is a definition of a single type of object
	class names in ruby start with capital letters. 

- attr_accessor :name, :age, :gender
	provides three attributes for the Person class
	attr > stands for attributes
	accessor > make these attributes accessible to be set and changed at will
=end

person_1 = Person.new
# creates a new instance of person class. and assigning to person_1

person_1.name = "Robert"
person_1.age = 23
person_1.gender = "male"

puts person_1.name 

=begin
	difference bw puts and print: 
		puts automatically moves the output cursor to the next line. 
		whereas print continues pronting to same line as previous time. 
=end

