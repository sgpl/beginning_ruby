=begin
# basics:

> class is a blueprint for objects. 
	can have one class called Shape, but have multiple instances of
	shapes (shape objects)

> object is an instance of a class
	x = Shape.new creates a new Shape instance and makes x a reference that object 

> local variable
	x = 10 

> global variable
	$x = 10 

> object variable
	@side = side
	
> class variable
	@@class_var # relevant for storing information relevant to all
	objects of a certain class. 

^^ refer to pages 120... for examples of the same. 

##

class methods vs object methods. 

>object methods self explainatory. 

>class methods

class Square
	def self.test_method
		puts "something"
	end
	
	# can also write:
	def Square.test_method
		puts "something"
	end 
end

=end


# class Square
# 	def self.hello
# 		puts "hello from the class square."
# 	end

# 	def Square.hello2
# 		puts "hello from the class square"
# 	end

# 	def method_name1
# 		puts "hello from the instance of Square."
# 	end
# end

# Square.hello
# Square.hello2
# Square.method_name1 # doesn't work. 

# Square.new.hello
# Square.new.hello2
# Square.new.method_name1

#----------

# class Square
  	
#   	def initialize
# 	    if defined?(@@number_of_squares)
# 	      @@number_of_squares += 1
# 	    else
# 	      @@number_of_squares = 1
# 		end 
# 	end

# 	def Square.count
# 	    @@number_of_squares
# 	end 
# end

# a = Square.new
# puts Square.count
# b = Square.new
# puts Square.count
# c = Square.new
# puts Square.count

