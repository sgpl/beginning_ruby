some_txt = "Adam spent $1000 on some fancy camera, and then gave $2000 to some poor guy he met on the street. James then came along and offered to pay Ramesh $20 bucks to take out the trash."

nos_frm_txt = []

some_txt.scan(/\d+/) { |num| nos_frm_txt.push(num) }

nos_frm_txt.each { |n| puts n}

=begin
this program uses the scan method on string to 
scan for numbers. numbers found are pushed into an existing array. 
using the each method, the numbers are then displayed. 
=end


# scanning for vowels in a string: 

_vowels = []
counter = 0 
some_txt.scan(/[aeiou]/) do |vwl| 
	_vowels.push(vwl)
	counter += 1
end

# can also scan [a-m] # => a to m lowercase


puts "The sentence \n #{some_txt} \n has #{counter} vowels. \n Here they are displayed as an array: \n #{_vowels}"
puts " "

_vowels.each {|nn| print nn; sleep 0.25}; puts 