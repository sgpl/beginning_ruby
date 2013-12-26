# modules help you avoid confusion in case you have two methods, classes
# or constants with the same name. 

# foll. example of using modules to create namespaces to avoid name related clashes

module NumberStuff
	def NumberStuff.random
		rand(1000)
	end
end

module LetterStuff
	def LetterStuff.random
		(rand(26) + 65).chr
	end
end

puts NumberStuff.random 
puts LetterStuff.random 


module ToolBox
  class Ruler
    attr_accessor :length
  end
end

module Country
  class Ruler
    attr_accessor :name
  end
end

a = ToolBox::Ruler.new
a.length = 50
b = Country::Ruler.new
b.name = "Ghengis Khan from Moskau"

puts a.length
puts b.name