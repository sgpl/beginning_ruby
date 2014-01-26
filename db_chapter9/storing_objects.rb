# csv has some limitations: data is "flat"

# Pstore is a core ruby library that allows 
# Ruby objects and data structures to be used as they normally would. 
# and be stored and later on reloaded back into memory from the disk file. 

# technique known as object persistence 
# relies on a technique known as marshalling where
# standard data structures are turned into a form of flat data
# that can be stired to disk or transmitted over a network for later reconstruction. 

class Person
	attr_accessor :name, :job, :gender, :age
end

fred = Person.new 
fred.name = "Fred Boggs"
fred.age = 45

laura = Person.new 
laura.name = "Laura Boggler"
laura.age = 25
