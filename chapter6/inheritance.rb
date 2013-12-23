=begin 
# inheritance. 

- ruby doesn't support multiple inheritance. rest is pretty self explainatory. 
- 

=end

# class ParentClass
#   	def method1
#     	puts "Hello from method1 in the parent class"
#   	end
#   	def method2
#     	puts "Hello from method2 in the parent class"
# 	end 
# end

# class ChildClass < ParentClass
# 	def method2
#     	puts "Hello from method2 in the child class"
#   	end
# end

# my_object = ChildClass.new
# my_object.method1
# my_object.method2


class Person
  
  def initialize(name)
    @name = name
  end
  
  def name
    return @name
  end 
end

class Doctor < Person
  def name
    "Dr. " + super
  end
end

# this helps if we change name from a single name to firstname + lastname
# won't need to make the changes in the doctor class. 