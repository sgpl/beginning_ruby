# defining classes within classes, so 

# from within shapes, can access Square and Circle directly, but outside
# we access them as Shapes::Square and Shapes::Circle
# and probably Shapes::Circle::Semicircle

# class Shapes
# 	def self.draw_a_circle
# 		Circle.new
# 	end

# 	class Square
# 		puts "this is a square"
# 	end

# 	class Circle

# 		class Semicircle
# 			def what_am_i2
# 				"I'm a subset of a circle, i'm semicircle"
# 			end
# 		end

# 		def what_am_i
# 			"I'm a circle!!!"
# 		end
# 	end
# end

# a = Shapes.draw_a_circle
# puts a.what_am_i
# a1 = Shapes::Circle.new
# puts a1.what_am_i
# puts a1::Semicircle.what_am_i2


class Drawing
  
  def Drawing.give_me_a_circle
    Circle.new
  end

  class Line
  end
  
  class Circle
    def what_am_i
		"This is a circle"
	end
  end
end


a = Drawing.give_me_a_circle
puts a.what_am_i
a = Drawing::Circle.new
puts a.what_am_i
a = Circle.new # gives an error because ...it should be obvious. 
puts a.what_am_i

fvckr