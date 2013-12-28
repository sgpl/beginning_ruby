
# class Person 
# 	def initialize(name)
# 		raise ArgumentError, "No name is present"if name.empty?
# 	end
# end

# fred = Person.new('')

# creating own type of exception

class MyOwnErrorMethod < RuntimeError
end

class Person 
	def initialize(name)
		raise MyOwnErrorMethod, "No name is present"if name.empty?
	end
end

fred = Person.new('')
