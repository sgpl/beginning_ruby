require 'rubygems'
require 'sqlite3'
$db = SQLite3::Database.new("dbfile")
$db.results_as_hash = true

def disconnect_and_quit
	$db.close
	puts "BYE!!!"
	exit
end

def create_table 
	puts "Creating table called people"
	$db.execute %q{
		CREATE TABLE people(
			id integer primary key, 
			name varchar(50),
			job varchar(50), 
			gender varchar(6), 
			age integer)
			}
end