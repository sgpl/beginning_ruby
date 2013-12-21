class Shape 
end

class Square < Shape
	def initialize(side_length)
		@side_length = side_length
	end

	def area
		@side_length * @side_length
	end

	def perimeter
		@side_length * 4
	end
end

class Triangle < Shape
	def initialize(side1, side2, side3, base, height)
		@side1 = side1
		@side2 = side2
		@side3 = side3
		@base = base
		@height = height
	end

	def area
		@base * @height * 0.5
	end

	def perimeter
		@side1 + @side2 + @side3
	end
end