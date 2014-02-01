# library that extends the String class

class String
	def vowels
		scan(/[aeiou]/i)
	end
end

p "This is a test".vowels