# Time stores times as a number of microseconds

puts Time.now
puts Time.now + 86400 # 86400 is one day in seconds. 


# ways to extend the Fixnum class to make time easier to manipulate:

class Fixnum

	def seconds
		self
	end

	def minutes
		self * 60 
	end

	def hours
		self * 60 * 60 
	end

	def days
		self * 60 * 60 * 24
	end
end

puts Time.now
puts Time.now + 10.minutes
puts Time.now + 16.hours
puts Time.now - 7.days
