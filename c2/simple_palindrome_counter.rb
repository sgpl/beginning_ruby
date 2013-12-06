# simple palindrome counter from an array. 

list1 = ["ablewasiereisawelba", "hellolleh", "shippihs", "newthings", 10001, 1234522]


counter_p = 0
for i in list1
	if i.to_s == i.to_s.reverse() # if we add numbers, we need to cast them to string
		puts "#{i} is a palindrome"
		counter_p += 1
	else
		puts "#{i} is not a palindrome"
	end
end

puts "There are #{counter_p} palindromes in the list."

## addendum 

puts "Percentage of palindromes in the list provided is #{(counter_p.to_f/list1.length)*100} % "

