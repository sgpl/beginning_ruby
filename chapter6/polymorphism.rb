=begin
polymorphism is the concept of writing code that can work with objects of 
multiple types and classes at once. 

eg: + method works for adding numbers, joining 	strings, and adding arrays.
	
=end


class Animal
	attr_accessor :name

	def initialize(name)
		@name = name
	end

end

class Cat < Animal
	def talk
		"Meaoooouw"
	end
end

class Dog < Animal
	def talk
		"woof woof!!!"
	end
end

animals = [Cat.new("Tommy"), Dog.new("Snowy"), Cat.new("MAX")]

animals.each {|animal| puts animal.talk}