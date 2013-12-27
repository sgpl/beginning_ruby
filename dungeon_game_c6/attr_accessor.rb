# attr_accessor provides attributes for objects:

class Person
  attr_accessor :name, :age
end

x = Person.new
x.name = "Fred"
x.age = 10
puts x.name, x.age

# attr_accessor is creating code that is similar to the following:

class Person
  
	def name
		@name 
	end
    
    def name=(name)
		@name = name
	end

	def age 
		@age
	end

	def age=(age)
	    @age = age
	end 
end

# This code defines the name and age methods that return the current 
# object variables for those attributes, so that x.name and x.age 
# (as in the prior code) work. 

# It also defines two “setter” methods
# that assign the values to the @name and @age object variables.
# If you pay attention to the names of the setter methods, you’ll see 
# they’re the same as the methods that return values but suffixed with
# an equal sign (=). This means they’re the methods that are run for code
#  such as x.name = "Fred" and x.age = 10. In Ruby, assignments are just 
#  calls to regular methods! Indeed, x.name = "Fred" is merely shorthand 
#  for x.name=("Fred").