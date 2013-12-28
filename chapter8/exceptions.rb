begin
	puts 10 / 0 
rescue 
	puts "you caused an error!!!"
end


# another example w/ pseudo code

# data = ""

# begin

#   <..code to retrieve the contents of a Web page..>
#   data = <..content of Web page..>

# rescue

#   puts "The Web page could not be loaded! Using default data instead."
#   data = <..load data from local file..>

# end

# puts data


#### can also work w/ multiple rescue blocks: 

# begin
#   ... code here ...
# rescue ZeroDivisionError
#   ... code to rescue the zero division exception here ...
# rescue YourOwnException
#   ... code to rescue a different type of exception here ...
# rescue
#   ... code that rescues all other types of exception here ...
# end


## here we reveive the exception and it is assigned to 'e' which we 
# can use as demonstrated below. 

begin
  puts 10 / 0
rescue => e
  puts e.class
end