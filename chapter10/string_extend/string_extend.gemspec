require 'rubygems'

spec = Gem::Specification.new do |s|
	s.name = 'string_extend'
	s.version = '0.0.1'
	s.summary = "StringExtend adds useful features to the String class"
	s.files = Dir.glob("**/**/**")
	s.test_files = Dir.glob("test/*_test.rb")
	s.author = "Sharad G."
	s.email = "sharad@gatech.edu"
	s.has_rdoc = false
	s.required_ruby_version = '>=1.8.2'
end

=begin
this is a basic specification file. 
passes information through to Gem::Specification. 

first we define name of the gem 
next we define version number
summary is a description that is displayed in gem list

files attribute accepts an array of all the files to include within the ge,. 
^ in this case, we use Dir.glob to get an array of all the files under current directory. 

test_files same explaination as above. 

required_ruby_version specifies version of ruby required. 
this can be omitted. 

	
=end