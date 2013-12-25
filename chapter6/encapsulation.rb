# Encapsulation is the ability for an object to have certain methods
# 	and attributes available for use publicly (from any section of 
# 	code), but for others to be visible only within the class 
# 	itself or by other objects of the same class.

	# public, private and protected :> three forms of Encapsulation supported by ruby 

# eg1 vs eg2::
# class Person

# 	def initialize(name)
# 		set_name(name)
# 	end

# 	def name
# 		@first_name + " " + @last_name
# 	end

# 	def set_name(name)
# 		first_name, last_name = name.split(/\s+/)
# 		set_first_name(first_name)
# 		set_last_name(last_name)
# 	end

# 	def set_first_name(name)
# 		@first_name = name
# 	end

# 	def set_last_name(name)
# 		@last_name = name
# 	end


# end


# eg2: 

class Person

	def initialize(name)
		set_name(name)
	end

	def name
		@first_name + " " + @last_name
	end

	private

	def set_name(name)
		first_name, last_name = name.split(/\s+/)
		set_first_name(first_name)
		set_last_name(last_name)
	end

	def set_first_name(name)
		@first_name = name
	end

	def set_last_name(name)
		@last_name = name
	end

end


# can also do this: 

class Animal 

	private

	def some_private_method
		
	end

	public

	def some_public_method
		
	end
end

# can also do this: use symbols to make something private, so 


class Monkey < Animal 


	def some_private_method
		
	end


	def some_public_method
		
	end

	def some_private_method2
		
	end

	private :some_private_method2, :some_private_method
end

# also ruby allows us to end lines using semi_colons so ";"


# example of protected method and difference w/ private


class Human

	def initialize(age)
		@age = age
	end

	def age
		@age
	end

	def age_diff(human2)
		(self.age - human2.age).abs
	end

	protected :age
	# private :age
end

fred = Human.new(34)
chris = Human.new(25)
puts chris.age_diff(fred)
puts chris.age

# this runs into an error because: 
=begin
age is protected, so it can only be accessed by other methods/members of the same class, 
and not from outisde it. 

if age were private, then this wouldn't work at all because then the age_diff method
wouldn't be able to use age. 	
=end