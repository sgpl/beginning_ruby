# if RUBY_PLATFORM =~ /win32/
# 	puts "We're in Windows!"
# elsif RUBY_PLATFORM =~ /linux/
#   puts "We're in Linux!"
# elsif RUBY_PLATFORM =~ /darwin/
#   puts "We're in Mac OS X!"
# elsif RUBY_PLATFORM =~ /freebsd/
#   puts "We're in FreeBSD!"
# else
#   puts "We're running under an unknown operating system."
# end

puts RUBY_PLATFORM

#on irb: gives a hash of ENV stuff. 
# ENV.each {|e| puts e.join(': ') }

# can decide where to store temp files, etc: 

# tmp_dir = '/tmp'

# if ENV['OS'] =~ /Windows_NT/
# 	puts "This program is running under Windows NT/2000/XP!"
# 	tmp_dir = ENV['TMP']
# elsif ENV['PATH'] =~ /\/usr/
# 	puts "This program has access to a UNIX-style file system!"
# else
# 	puts "I cannot figure out what environment I'm running in!"
# exit end

# [.. do something here ..]