# load 'a.rb'
require './a'
puts "Hello from b.rb"
require './a'
# load 'a.rb'
puts "Hello again from b.rb"

# difference from require to load is that load reloads the file both times
# resulting in  hello from a.rb being printed twice. 