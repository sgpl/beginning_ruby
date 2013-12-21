text = %q{Los Angeles has some of the nicest weather in the country.}
stop_words = %w{the by a on for of are which just with but and to the my in I has some}

words = text.scan(/\w+/)
keywords = words.select {|word| !stop_words.include?(word)}
p keywords # keywords as an array 
p text # sentence as is
p words # sentence as an array 
p stop_words # stop_words as an array 