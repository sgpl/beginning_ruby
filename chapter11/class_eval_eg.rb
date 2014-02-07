
class Person 
end

def add_accessor_to_person(accessor_name)
	Person.class_eval %Q{
	attr_accessor :#{accessor_name}
}
end

person = Person.new
add_accessor_to_person :name
add_accessor_to_person :gender
person.name = "Sharad Gopal"
person.gender = "Male"
puts "#{person.name} is #{person.gender}"

# add_accessor_to_person method is used to add accessors dynamically to the 
# Person class. 
# we are essentially creating name and gender accessors from scratch. 


# string interpolation makes eval methods powerful tools for generating 
# different features on the fly. 

# can also make it super easy by making add_accessor_to_person part of class:

class Class
    def add_accessor(accessor_name)
        self.class_eval %Q{
            attr_accessor :#{accessor_name}
		} 
	end
end


class Person
end

person = Person.new
Person.add_accessor :name
Person.add_accessor :gender
person.name = "James Bond"
person.gender = "Superman"
puts "#{person.name} is #{person.gender}"

### we can also do something like this: 

class NewClassForKicks
	add_accessor :somenewthing
end

# because add_accessor is being used within a class, the method call
# will work its way up to where we've defined add_accessor in the Class class. 
