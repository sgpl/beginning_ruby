class Fixnum
	alias :add_this_number_to_the_other_number :+
end

puts 2 + 3
puts 2.+(4)

puts 3.add_this_number_to_the_other_number(7)