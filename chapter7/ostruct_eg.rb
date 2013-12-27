#OpenStruct class provides more simpler functionality than the Struct data structure

require 'ostruct'

person = OpenStruct.new
person.name = "adam galloway"
person.age = 34
person.gender = :male

# can create attributes on the fly. 

p person