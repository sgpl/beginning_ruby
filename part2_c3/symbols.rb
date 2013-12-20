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

# symbols are particularly useful when creatig hashes and you 
# want a distinction between keys and values. 

# eg: 

s = {:key => 'value'}

# also useful in being consistent when deciding which key names to use: 

person_1 = {:name => 'Adam', :age => 10, :height => 177, :gender => :male}
person_2 = {:name => 'Jessica', :age => 20, :height => 127, :gender => :female} 

# symbols can be thought of as less flexible strings that are used as 
# identifiers. 

# changing stuff to other classes:
# .to_i	integer 
# .to_s	string
# .to_f	float
# .to_a	array
# .to_sym 	symbol