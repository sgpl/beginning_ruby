# csv has some limitations: data is "flat"

# Pstore is a core ruby library that allows 
# Ruby objects and data structures to be used as they normally would. 
# and be stored and later on reloaded back into memory from the disk file. 

# technique known as object persistence 
# relies on a technique known as marshalling where
# standard data structures are turned into a form of flat data
# that can be stored to disk or transmitted over a network for later reconstruction. 

class Person
	attr_accessor :name, :job, :gender, :age
end

fred = Person.new 
fred.name = "Fred Boggs"
fred.age = 45
fred.gender = "Male"

laura = Person.new 
laura.name = "Laura Boggler"
laura.age = 25


require 'pstore'
# creating a new Pstore in a file called storagefile
# then we start a transaction**
# ** data within a Pstore file can only 
# be read or updates while inside a "transaction."
# to prevent data corruption. 
## refer to the book for a more detailed exp: pg: 225

store = Pstore.new("storagefile")
store.transaction do	
	store[:people] || = Array.new
	store[:people] << fred 
	store[:people] << laura 
end

=begin 
later we can retrieve data from the Pstore database
so: 
require 'pstore'
store = Pstore.new("storagefile")
people = []
store.transaction do
	people = store[:people]
end

# after this we can treat Person objects inside people as
# local objects so :

people.each do |person|
	puts person.name
end
=end

# require 'pstore'
# store = Pstore.new("storagefile")
# people = []
# store.transaction do
# 	people = store[:people]
# end

# # after this we can treat Person objects inside people as
# # local objects so :

# people.each do |person|
# 	puts person.name
# end