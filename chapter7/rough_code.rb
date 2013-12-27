$debug_mode = 0 
require $debug_mode == 0 ? "normal-classes" : "debug-classes"

# includes different source files based on the value of a variable.



# A commonly used shortcut uses arrays to quickly load a 
# collection of libraries at once. For example:

%w{file1 file2 file3 file4 file5}.each { |l| require l }

# nested inclusions

# Code from files that are included in others with require and 
# load has the same freedom as if the code were pasted directly 
# into the original file. This means files that you include can
# call load and require themselves. For example, assume a.rb 
# contains the following:

require 'b'

# and b.rb contains the following:

require 'c'

# and c.rb contains the following:

def example
  puts "Hello!"
end

# and d.rb contains the following:

require 'a'
example


# When d.rb is then run,

Hello!

# d.rb includes a.rb with require, a.rb includes b.rb, and b.rb 
# includes c.rb, meaning the example method is available to d.rb.
# This functionality makes it easy to put together large projects 
# with interdependent parts, as the structure can be as deep as you like.