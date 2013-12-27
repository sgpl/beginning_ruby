class String
	def vowels
		self.scan(/[aeiou]/i) # i at the end makes the regex case insensitive.  
	end
end


puts "This is a test".vowels.join(' && ')