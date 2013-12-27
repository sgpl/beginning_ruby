$:.each {|d| puts d}
puts " "
$LOAD_PATH.each { |var| puts var}

# If you want to add extra directories to this, it’s simple:

# $:.push '/your/directory/here'
# require 'yourfile'

# $: is an array, so you can push extra items to it or use unshift 
# to add an element to the start of the list (if you want your directory
# to be searched before the default Ruby ones—useful if you want 
# to override Ruby’s standard libraries).