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


#### easier gem creation

- **gem install newgem** (a tool that makes creating structure and default files for generating a gem, a one step process)
	- once installed, we can do something like "newgem name_of_library_for_gem"


#### distributing a gem: 

- refer to book. pg 260
- rubyforge is the most popular hosting soln. for gems
- also github can satisfy the same criteria for hosting ruby gems

#### stuff on cgi scripts

- pg- 261 to 264

### generic http servers

- we'll cover WEBrick and Mongrel
- refer to notes ~pg 265 for more details on WEBrick

- for Mongrel, we need to "gem install mongrel"
- TODO ; pg- 267 to 268

## Remote Procedure Calls

- RPCs are common way to make program functionality available to remote programs. 
- Ruby has built-in support for XML-RPC and SOAP, as well as DRb

#### XML-RPC

- uses XML for its messaging and HTTP  for its transport. 
- can create multiple programs in different languages but still talk bw them in a way that every language understands. 


Calling a XML-RPC Enabled method

----------------------------------------
require 'xmlrpc/client'

server = XMLRPC::Client.new2("http://www.rubyinside.com/book/xmlrpctest.cgi")
puts server.call("sample.sumAndDifference", 5, 3).inspect
----------------------------------------

- just read through/skipped pgs 269 to 272

## summary

- shebang line -> determines which interpreter is used to process file
- RUBY_PLATFORM -> variable that contains name of current platform
- Environment Variables -> special variabels set by the operating system or other processes that contain information relevant to the current execution environment and information about the os.
- rubyforge / github -> self explainatory
- CGI: common gateway interface -> standard that enables web servers to execute scripts and provide an interface bw web users and scripts located on the server. 
- WEBrick -> simple and easy HTTP server lib for Ruby that comes standard with Ruby
- Mongrel -> more powerful HTTP server library for Ruby by Zed Shaw that improves upon WEBrick's speed, stability and performance. 
- RPC -> remote procedure call: a way to call methods in a different program using a network (either local or the internet) , a transport protocol (such as HTTP) and a messaging protocol (such as XML)
- XML-RPC -> RPC protocl that uses HTTP and XML.  for transport and messaging. 
- SOAP (simple object access protocol) -> RPC protocol that uses HTTP and XML for transport and messaging
- DRb -> distributed ruby : ruby only mechanism for implementing RPCs and object hahdling bw separate Ruby scripts. 


