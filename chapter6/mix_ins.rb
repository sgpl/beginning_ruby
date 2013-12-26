# mix-ins let you add functionality from one class to another. 
# kind of like a different take on multiple inheritance (which ruby doesn't support)


module UsefulFeatures
	def class_name
		self.class.to_s
	end
end

class Person
	include UsefulFeatures
end

x = Person.new
puts x.class_name


# --------
# modules are org tools. are like classes but different. 

module AnotherModule
  def do_stuff
    puts "This is a test"
  end
end

include AnotherModule
do_stuff

# also 
AnotherModule.do_stuff