# Encapsulation is the ability for an object to have certain methods
# 	and attributes available for use publicly (from any section of 
# 	code), but for others to be visible only within the class 
# 	itself or by other objects of the same class.

# eg:
class Person

	def initialize(name)
		set_name(name)
	end

	def name
		@first_name + " " + @last_name
	end

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
