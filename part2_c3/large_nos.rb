rice_on_square = 1 # variable for counting rice on squares
64.times do |square| # x.times do, creates a variable for action. 
	puts "On square #{square + 1} are #{rice_on_square} grain(s). Class: #{rice_on_square.class}"
	# square is expressed as square + 1, as square starts from zero. 
	rice_on_square *= 2 # doubles from previous value
end

# ruby switches to Bignum from 1073741823
puts 1073741823.class # => Fixnum
puts 1073741824.class # => Bignum ## edit: not Bignum

