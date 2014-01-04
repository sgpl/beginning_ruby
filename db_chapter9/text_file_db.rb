# text file database: 
# eg: CSV



# require 'csv'
# CSV.open('text.txt', 'r').each do |person|
# 	puts person.inspect # can also do something like person[0]
# end

# require 'csv'
# people = CSV.parse(File.read('text.txt'))
# puts people[0][0]
# puts people[1][0]
# puts people[2][0]

# require 'csv'
# puts CSV.read('text.txt').inspect


# to pick out first person in list called Laura
# find and find_all are array functions provided by the enumerable module. 
# find returns first match. 
# find all returns all matches. 

# require 'csv'
# people = CSV.read('text.txt')
# laura = people.find {|person| person[0] =~ /Laura/ }
# puts laura.inspect



# require 'csv'
# people = CSV.read('text.txt')
# young_people = people.find_all {|person| person[3].to_i.between?(20,40) }
# puts young_people.inspect



# writing data back to csv file. 
require 'csv'
people = CSV.read('text.txt')
laura = people.find { |person| person[0] =~ /Laura/ }
puts laura
laura[0] = "Lauren Smith"

CSV.open('text.txt', 'w') do |csv|
	people.each do |person|
		csv << person
	end
end
puts laura
# we have to load data, change name, and then open up the  CSV file and re-write
# the data back to it. 