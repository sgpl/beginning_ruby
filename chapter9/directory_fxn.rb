Dir.chdir("/usr/bin") # => to change dir within a ruby program 

puts Dir.pwd # => present working dir

# can get a list of the files and directories within a 
# specific directory using Dir.entries:
puts Dir.entries("/usr/bin").join(' ')

Dir.mkdir("name_of_dir") # => to make a directory

Dir.delete("name_of_dir") # => can also use .unlink and .rmdir

# lots more info on dir, such as creating temp dir. etc in the book. 