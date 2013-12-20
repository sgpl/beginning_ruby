# Time stores times as a number of microseconds

puts Time.now
puts Time.now + 86400 # 86400 is one day in seconds. 


# ways to extend the Fixnum class to make time easier to manipulate:

class Fixnum

	def seconds
		self
	end

	def minutes
		self * 60 
	end

	def hours
		self * 60 * 60 
	end

	def days
		self * 60 * 60 * 24
	end
end

puts Time.now
puts Time.now + 10.minutes
puts Time.now + 16.hours
puts Time.now - 7.days

# read more about:
# Time.local(year, month, day, hour, min, sec, msec)
# Time.utc(year, month, day, hour, min, sec, msec)

=begin

hour 	A number representing the hour in 24-hour format (21 for 9 p.m., 
		for example).

min 	The number of minutes past the hour.
sec 	The number of seconds past the minute.
usec 	The number of microseconds past the second 
		(there are 1,000,000 microseconds per second).

day 	The number of the day in the month.
mday 	Synonym for the day method, considered to be “month” day.
wday 	The number of the day in terms of the week 
		(Sunday is 0, Saturday is 6). 

yday 	The number of the day in terms of the year.
month 	The number of the month of the date (11 for November, for example). 
year 	The year associated with the date.
zone	Returns the name of the time zone associated with time
utc?	Returns true or false depending on if the time/date is 
		in the UTC/GMT time zone

gmt? 	Synonym for the utc? method. 

=end