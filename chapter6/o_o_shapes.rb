# procedural 

def perimeter_square(side_length)
	side_length * 4
end

def area_square(side_length)
	side_length * side_length
end

def perimeter_triangle(side1, side2, side3)
	side1 + side2 + side3
end

def area_triangle(base, height)
	(base * height) / 2
end

# not necessary to use return to return values from methods in Ruby
# last expression is used as return value by default. 
