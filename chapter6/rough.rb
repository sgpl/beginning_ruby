def fib(i)
	if i.zero?
		i
	elsif i == 1
		1
	else
		fib(i-2) + fib(i-1)
	end
end
# puts fib(10)


1.upto(10) {|num| puts fib(num) }