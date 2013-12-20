# basic stuff about if/else etc statements. 

# ternary operator
print "enter your age:"; age = gets.chomp.to_i
type = age < 18 ? "below drinking age" : "above drinking age"
puts "you are : " + type

# <condition> ? <result if true> : <result if false>

# case blocks as an alternative to if-elsif-else
fruit = "orange"

# if fruit == "orange"
# 	color = "ornage"
# elsif fruit == "banana"
# 	color = "yellow"
# else
# 	color = "unknown"
# end

# VVV 

case fruit
	when "orange"
		color = "orange"
	when "banana"
		color = "yellow"
	else
		color = "unknown"
end

##### the above can be made shorter using: ####


color = case fruit
when "orange"
	"orange"
when "banana"
	"yellow"
else
	"unknown"
end
##^ using the case block, but assigning result of whichever 
# inner block is executed directly to color. 


# loops and iterators other than: 1.upto() 1.downto() 1.step(A,B)


# xx = 1
# while xx < 100
# 	puts xx
# 	xx = xx*2
# end

# yy = 1
# until yy > 99
# 	puts yy
# 	yy = yy * 2
# end


##### while and until in one line:

i = 1
i = i*2 until i >1000
puts i # puts the last value as opposed to all the values


## CODEBLOCKS ::>
#-----------


def each_vowel(&code_block)
	%w{a e i o m u}.each {|vowel| code_block.call(vowel) }
end

each_vowel {|vowel| puts vowel}
	

# ----------- yield method: 

def each_vowel2
	%w{a e i o u}.each { |vowel| yield vowel }
end

each_vowel2 { |vowel| puts vowel }

# also possible to store code blocks within variables using lambda:

print_parameter_to_screen = lambda { |x| puts x }
print_parameter_to_screen.call(100)

# lambda, codeblocks and procs are the same thing?

