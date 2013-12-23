# overriding existing methods. 

x= "this is a test"
puts x.class

puts x.length
puts x.upcase

class String

	def length
		2343
	end
	# alias is not working. 
	# perhaps there is some error in the way i'm writing it out. 
	# need to refer back to notes to check this out. 
	
	# alias :length :get_len
end

puts x.length 
# puts x.get_len