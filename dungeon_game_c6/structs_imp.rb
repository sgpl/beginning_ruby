# Simply, the Struct class builds classes to store data. 
# On the first line you create a new class called Person 
# that has built-in name, gender, and age attributes. On 
# the second line you  a new object instance of Person 
# and set the attributes on the fly.


Person = Struct.new(:name, :gender, :age)
fred = Person.new("Fred", "male", 50)
chris = Person.new("Chris", "male", 25)

# this is similar to the following:

class Person
	attr_accessor :name, :gender, :age

	def initialize(name, gender, age)
		@name = name 
		@gender = gender 
		@age = age
	end
end

