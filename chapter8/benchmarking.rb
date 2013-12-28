# benchmarking = process of measuring how efficiently your code is running. 

# ruby contains a Benchmark module

require 'benchmark'
# puts Benchmark.measure {10000.times {print "."}}

# can also do: 

# iterations = 1000000

# b = Benchmark.measure do 
# 	for i in 1..iterations do 
# 		x = i
# 	end
# end

# c = Benchmark.measure do 
# 	iterations.times do |i|
# 		x = i 
# 	end
# end


# puts b
# puts c


# alternative to above: 

iterations = 1000000

Benchmark.bm do |bm|
	bm.report("for:") do 
		for i in 1..iterations do 
			x = 1
		end
	end

	bm.report("times:") do 
		iterations.times do |i|
			x = i 
		end
	end
end


Benchmark.bmbm do |bmbm|
	bmbm.report("for:") do 
		for i in 1..iterations do 
			x = 1
		end
	end

	bmbm.report("times:") do 
		iterations.times do |i|
			x = i 
		end
	end
end

