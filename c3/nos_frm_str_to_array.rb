some_txt = "Adam spent $1000 on some fancy camera, and then gave $2000 to some poor guy he met on the street. James then came along and offered to pay Ramesh $20 bucks to take out the trash."

nos_frm_txt = []

some_txt.scan(/\d+/) { |num| nos_frm_txt.push(num) }

nos_frm_txt.each { |n| puts n}

=begin
this program uses the scan method on string to 
scan for numbers. numbers found are pushed into an existing array. 
using the each method, the numbers are then displayed. 
=end