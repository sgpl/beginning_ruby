# advanced ruby features: 
####[note]: skipping chapter for now // see bottom and update this when i finish the chapter. 


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

eg:
----------------------------------------
def binding_elsewhere
	x = 20 
	return binding
end

remote_binding = binding_elsewhere

x = 10 
eval("puts x") # => 10 
eval("puts x", remote_binding) # => 20

# eval accepts an optional second parameter, a binding. 

# extending the previous code:

eval("x = 10")
eval("x = 50", remote_binding)
eval("puts x") # => 10
eval("puts x", remote_binding) # => 50

----------------------------------------

# other forms of eval

- although eval executes code within the current context, class_eval, module_eval and instance_eval can evaluate code within context of classes, modules and object instances. 

- class_eval is ideal for adding methods to class dynamically (see: class_eval_eg.rb)

### currently on pg. 278 // skipping the rest of the chapter. will complete later. 