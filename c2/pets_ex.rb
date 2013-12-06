#example of inheritance: 
=begin

class Cat
	attr_accessor :name, :age, :gender, :color
end

class Dog
	attr_accessor :name, :age, :gender, :color
end 

class Monkey
	attr_accessor :name, :age, :gender, :color
end 

class Snake
	attr_accessor :name, :age, :gender, :color
end 

=end

# inheritance allows diff classes to relate to noe anohter and group 
# concepts by their similarities. 


class Pet
	attr_accessor :name, :age, :gender, :color

	def get_hungry
		puts "I'm hungry!!! Feed Me"
	end
end

class Cat < Pet
	attr_accessor :breed
end

class Dog < Pet
	def get_barking
		puts "Woof! Woof!"
	end
end

class Monkey < Pet
end

class Snake < Pet
	attr_accessor :length

	def crawl
		puts "watch the snake move . . . . . . "
		7.times do 
			print "-----> "
			sleep (rand(5)) # replaced 0.5 with rand(5)
		end
		puts ' '
	end
end

tommy = Dog.new
tommy.name = "tommy"
tommy.age = 12
#tommy.breed = "German Shephard" # gives error as not defined for dogs

snaky = Snake.new
snaky.crawl

snaky.get_hungry

tommy.get_barking