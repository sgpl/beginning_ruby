#example of inheritance: 

class Pet
	attr_accessor :name, :age, :gender, :color

	def get_hungry
		puts "#{name} says: I'm hungry!!! Feed Me"
	end

	alias :hungr :get_hungry
end

class Cat < Pet
	attr_accessor :breed
end

class Dog < Pet
	def get_barking
		puts "#{name} says: Woof! Woof!"
	end
end

class Monkey < Pet
	alias :hu_monkey :get_hungry
end

class Snake < Pet
	attr_accessor :length

	def crawl
		puts "watch the snake move . . . . . . "
		10.times do 
			print "---" * rand(6) + ">"
			sleep (rand(5)/2.0) # replaced 0.5 with rand(5)
		end
		puts ' '
	end
end

tommy = Dog.new
tommy.name = "Tommy"
tommy.age = 12
#tommy.breed = "German Shephard" # gives error as not defined for dogs

snaky = Snake.new
snaky.crawl
snaky.name = "The Snake"

snaky.get_hungry

tommy.get_barking

tommy.hungr

mon = Monkey.new
mon.name = "Mr. MoJoJoJo"
mon.hu_monkey

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
