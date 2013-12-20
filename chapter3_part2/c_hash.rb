# hashes within hashes: 

people = {
	'fred' => {
		'name' => 'Fred Smith',
		'age' => 23,
		'job' => 'engineer'
	}, 

	'gina' => {
		'name' => 'Gina Trandini',
		'age' => 29,
		'gender' => 'female',
		'job' => 'engineer',
		'hobby' => ['singing', 'dancing', 'reading']
	}, 

	'james' => {
		'name' => "James the Bondd",
		'children' => {'Julia' => 3, 'Martha' => 5, 'Adam' => 11}
	}
}

p people
puts " "
puts people['fred']['age']
puts people['gina']['gender']
p people['gina']['hobby']
puts people['james']['children']
puts people['james']['children']['Julia']
puts people['gina']['hobby'][2]
puts people['gina']['hobby'].length
puts people['gina']['hobby'].join(' and ')

people['james']['children'].delete("Julia")
puts people['james']['children']