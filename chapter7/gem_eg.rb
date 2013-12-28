require 'rubygems'
require 'RedCloth'
r = RedCloth.new("This is a *test* of _using RedCloth_")
puts r.to_html

# installed RedCloth and installed hpricot
# 27/dec/2013

# can update all gems with 'gem install'
# to uninstall 'gem uninstall <name of gem>'