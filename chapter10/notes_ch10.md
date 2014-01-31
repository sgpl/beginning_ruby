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