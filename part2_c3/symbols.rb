# symbols are abstract references represented typically by a 
# short string prefixed w/ a colon. 

current_situation = :good
puts "everything is fine" if current_situation == :good
puts "PANIC" if current_situation == :bad

# ^ good and bad are symbols in this example. 
# if we use good and bad stored in variables, 
# it is inefficient as every mention of good and bad 
# creates a new object stored in memory. 
# symbols are single reference values only initialized once. 

