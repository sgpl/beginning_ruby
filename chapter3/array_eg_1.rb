x = []
x << "Fish"

# << is an operator for pushing object into array. 

# can also use 

x.push("Word")

puts x
puts
print x
puts "\n \n  "

# traditionally arrays => LIFO: LAST IN FIRST OUT

x << "Work"
x << "Kills"
x << "Fun"

while x.length > 0 
	puts x.pop()
	break if x.length == 2
end

puts " "

# while x.size > 0 
# 	puts x.pop()
# end


# size gives the same result as length


x = ["apple", "mango", "james"]
puts x.join
puts x.join(" __ is __ ")