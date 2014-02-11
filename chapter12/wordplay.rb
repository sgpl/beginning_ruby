class WordPlay
end

class String
	def sentences
		gsub(/\n|\r/, ' ').split(/\.\s*/)
	end

	def words
		scan(/\w[\w\'\-]*/)
	end
end


# p %q{Hello. This is a test of
# basic sentence splitting. It
# even works over multiple lines.}.sentences

# p "This is a test of words' capabilities".words

# p %q{Hello. This is a test of basic sentence splitting. It
# even works on multiple lines}.sentences[1].words[3] # simple array access

hot_words = %w{ruby test}
my_string = "This is a test. Dull sentence here. Ruby is great. So is cake."
my_string.sentences.find_all do |s|
	s.downcase.words.any? {|word| p hot_words.include?(word)}
end

# example of a sentence sorting/ranking function. both the inputs are arrays here. 
def self.best_sentence(sentences, desired_words)
	ranked_sentences = sentences.sort_by do |s|
		s.words.length - (s.downcase.words - desired_words).length
	end

	ranked_sentences.last
end

def self.switch_pronouns(text)
	text.gsub(/\b(I am|You are|I|Your|My)\b/i) do |pronoun|
	case pronoun.downcase

		when "i"
			"you"	 
		when "you"
			"I"	  
		when "i am"
			"you are"	   
		when "you are"
			"i am"	    
		when "your"
			"my"	      
		when "my"
			"your"
	end	      
	end
end
