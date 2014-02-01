# advanced ruby features: 

## dynamic code execution 
----------------------------------------
eval "puts 2 + 2"

puts eval("2+2")

my_number = 15

my_code = %Q{#{my_number} * 2}
  
puts eval(my_code)

----------------------------------------

## bindings

- binding is a reference to a context, scope or state of execution. binding includes things such as the current value of variables and other details of the execution environment. 
- It’s possible to pass a binding to eval and to have eval execute the supplied code under
that binding rather than the current one.

----------------------------------------

----------------------------------------
