
('A'..'Z').to_a.each {|l| print l}

# .to_a => to array

# the following program prints upcase letter if even, and pushes the result 
# to an array. it uses the range function to create A to Z, ('A'..'Z')
# .to_a converts the range to an array. 

arr1 = []
nnn = 0
('A'..'Z').to_a.each do |l| 
	(nnn%2==0)? (print l; arr1.push(l)) : (print l.downcase)  
	nnn += 1
	sleep 0.25
end

p arr1


### range object has its own each method. 


#so instead of ('A'..'Z').to_a.each {|l| print l}, the foll also works:

('A'..'Z').each {|alph| print alph}

puts ('A'..'Z').include?('R')

abb = [1, 2, 3, 4, 5, 6]
p abb[1..3] # can use range as array indices. 

# can also use range to replace contents of array. so:

abb[1..2] = ['a', 'b']
p abb

