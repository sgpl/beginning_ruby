## loops and iterators: 
=begin

5.times do puts "hello world" end
# ^ just a simple loop
5.times do puts "hello world"; sleep 1; end
# ; <- aren't really necessary. 
#   also, sleep puts program to sleep for 1 second. 

# => do #code# end can be replaced by { and }

5.times {puts "Hello Alfred"}

# other kinds of iterators: 

1.upto(5) { ...code to loop here... }
^ iterates from 1 upto 5
10.downto(5) { ...code to loop here... }
^ iterates from 10 downto 1
0.step(50, 5) { ...code to loop here... }
^ iterates from 0 to 50 in steps of 5

1.upto(5) do ...code to loop here... end
10.downto(5) do ...code to loop here... end
0.step(50, 5) do ...code to loop here... end

# eg: 

1.upto(5) { |num| puts num }

# or: 

1.upto(5) do |num|
	puts num
end

=end

## ----------------------------------------
## comparison operators and expressions. 

# age = gets.chomp.to_i 

# puts "You are too young to use this program" if age < 18

# puts "You are too young to use this" unless age > 18

# puts "You are not a teenager" if age < 12 or age > 20

# puts "You are NOT a teenager" unless age >12 && age <20

# age.between(13, 19) ### is equal to age > 12 && age < 20. 
# it returns a boolean

# can also test for equality: puts "###" if age == 23

