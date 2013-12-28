# catch and throw  work w/ symbols rather than exceptions. 
# designed to be used in situations where no error has occured. 
# 

catch(:finish) do 
	1000.times do 
		x = rand(1000)
		# print x, ",  " 
		throw :finish if x == 123
	end

	puts "Generated 1000 random nos. w/o generating 123"
end


### same as above?

def generate_random_number_except_123
  x = rand(1000)
  throw :finish if x == 123
end

catch(:finish) do
  1000.times { generate_random_number_except_123 }
  puts "Generated 1000 random numbers without generating 123!"
end