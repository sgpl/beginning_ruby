# unit testing is the primary componene of test driven development


class String
	def titleize
		self.gsub(/(\A|\s)\w/) { |letter| letter.upcase }
	end
end

require 'test/unit'

# TestTitleize is a child class of Test case which is a subclass of Unit which is a subclass of Test?
class TestTitleize < Test::Unit::TestCase
	def test_basic
		assert_equal("This Is A Test", "this is a test".titleize)
		assert_equal("Another Test 1234", "another test 1234".titleize)
		assert_equal("We're Testing", "we're testing".titleize)
		assert_equal("Let's make a test fail!", "foo".titleize)
	end
end

# assert_equal asserts that the first adn second argument are equal. 

# refer to pg: 195 for examples of this