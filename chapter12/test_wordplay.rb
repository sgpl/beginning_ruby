require 'test/unit'
require './wordplay'

# Unit testing class for the WordPlay lib. 
class TestWordPlay < Test::Unit::TestCase

	# test that multiple sentence blocks are split up into individual 
	# words correctly
	def test_sentences
		assert_equal(["a", "b", "c d", "e f g"], "a. b. c d. e f g.".sentences)
		
		test_text = %q{Hello. This is a test of 
			sentence separation. This is the end 
			of the test.}
			assert_equal("This is the end of the test", test_text.sentences[2])
	end

	# test that sentences of words are split up into distinct
	# words correctly 
	def test_words
		assert_equal(%w{this is a test}, "this is a test".words)
		assert_equal(%w{these are mostly words}, "these are, mostly, words".words)
	end

	# test that correct sentence is chosen, given input
	def test_sentence_choice
		assert_equal('This is a great test', 
					WordPlay.best_sentence(['This is a test', 
											'This is another test', 
											'This is a great test'], 
											%w{test great this}))
		assert_equal('This is a great test', 
					WordPlay.best_sentence(['This is a great test'], 
						%w{still the best}))		
	end

	


end
