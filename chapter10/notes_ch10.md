## deploying ruby applications and libraries


#### distributing basic ruby programs

- can simply distribute the source code. 
- can also make functionality of Ruby programs available across a network by maintaining a runnoing copy of program on a machine that is network accessible. 
- some examples:
	- copy file to another computer and run program 
	- shebang line: #!/usr/bin/env ruby


- RubyScript2Exe
	- converts Ruby source code into executable files that can be used primarily on Windows/Mac/Linux

- Platypus
	- can create native, integrated applications from Ruby(perl, python, php) scripts
	- ~ pg. 251

#### accessing command line arguments

- ARGV: is an array automatically created by the Ruby interpreter that contains parameters passed to the Ruby program (whether on the command line or by other means. )
- refer to >> argv_ex.rb
- command line arguments can be used to pass: options, settings and data fragments that might change bw the execution of the argument. 

EG: script.rb arg1 arg2

from_filename = ARGV[0]

destination_filename = ARGV[1]


## distributing/releasing ruby libraries as gems

#### creating a gem

##### raw approach: from the ground up

- building a gem requires three steps: 
	1. organize code and other files into a structure that can be turned into a gem 
	2. create a specification file that lists information aobut the gem 
	3. use the gem program to build the gem from the source files and specifications
	


#### structuring files: 

- collect all the files you want to make up the gem. 
- it is necessary to create a folder to contain all the gem's folders, so create a folder, eg:  gemname_folder (which will contain the following sub folders)
	- lib: this directory will contain ruby code related to the library
	- pkg: this is a temporary directory where the gem will be generated
	- test: this directory will contain any unit tests or other testing scripts related to the library
	- doc: this is an optional directory taht could contain documentation about the library, particularly documentation created with or by rdoc
	- bin: this is another optional directory that can contain system tools and command-line scripts that are related to the library. 

- At a minimum we should have: 'lib','pkg','test'
	

#### then we create a specification file
- once that is done, we can do "gem build <spec file>"