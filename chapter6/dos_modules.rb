# can include pre defined modules that we can include in our code:

# two such modules are: Enumerable and Comparable



my_array = %w{this list contains some words thatthattt are longer that other words megaawesome}
longest_word = ''
my_array.each do |word|
	longest_word = word if longest_word.length < word.length
	puts longest_word
end

puts longest_word


num_array = %w{ 23 4 45 12 452 563 123 435 577 2321 5363 }
_number = 0 
num_array.each do |num|
	num = num.to_i
	_number = num if num > _number
	sleep 0.10
	puts "current highest number is #{_number}"
end

class WhyNotThis
	@@num_array2 = %w{ 23 4 45 12 452 563 123 435 577 2321 5363 }
	include Enumerable

	def WhyNotThis.some_method22
		puts @@num_array2.min
		puts @@num_array2.max
		p @@num_array2.sort
	end
end

WhyNotThis.some_method22

# sort, min, max not working as they should. 