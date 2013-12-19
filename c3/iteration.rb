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