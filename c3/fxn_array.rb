x = "random list of char".scan(/\w/)
# y = "random list of characters".split(/\w/)
p x
# p y 

x.each {|element| puts element.to_s + " this is a char"}


yy = [1, 2, 3, 4, 5].collect {|element| element * 3}

p yy

# 'collect' lets you convert elements of an array on the fly. 
# 'map' is similar in functionality to collect. 

xx = x.map {|element| element.to_s*4}
p xx

# --------
# doing something similar to what codeblocks let us do. the old fashioned way: 
i = 0 
while i < x.length
	puts x[i].to_s + "X"
	i += 1
end

# array addition, contacnation:

_arr_new = x + yy
p _arr_new

# array substraction and difference. 
# removes any elements from the main array 
# that are common to both arrays. eg: 

a1 = [1, 2, 3, 4, 5]
b1 = [3, 4, 5, 6, 7]
c1 = a1 - b1 # => results in [1, 2]
d1 = b1 - a1 # => results in [6, 7]
p c1
p d1

#checking for an empty array: 
n1 = []
puts "array n1 is empty" if n1.empty?
puts "array d1 is NOT empty" unless d1.empty?
puts "array n1 is empty" unless !n1.empty?

# checking array for certain elements

puts a1.include?(4)
puts a1.include?(6)

# accessing first & last elements of an array:
puts a1.first
puts a1.last

# reversing an array:

p "a1 is #{a1}"
p "a1.reverse is #{a1.reverse}"

# if we pass a numeric parameter to first or last, 
# we get that number of elements/items (not the index) from the 
# start or end of the array

puts a1.first(3).join(" comes before ")
puts a1.reverse.first(3).join(" comes after ")