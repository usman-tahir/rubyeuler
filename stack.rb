# http://rosettacode.org/wiki/Stack
#
# The basic stack operations are:
#
# push stores a new element onto the stack top;
# pop returns the last pushed stack element, while removing it from the stack;
# empty tests if the stack contains no elements. 
#
# top (sometimes called peek to keep with the p theme) returns the topmost 
# element without modifying the stack. 
start_time = Time.now
stack_storage = Array.new

def stack_storage.stack_push(element)
  self << element
end

def stack_storage.stack_pop
  self.pop
end

def stack_storage.stack_empty
  self.count == 0
end

def	stack_storage.stack_top
  self[-1]
end

puts "Testing operations:"
puts "~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
puts "Is the stack empty?"
puts stack_storage.stack_empty.to_s
puts "Pushing elements"
stack_storage.stack_push(5)
stack_storage.stack_push(4)
stack_storage.stack_push(3)
stack_storage.stack_push(2)
stack_storage.stack_push(1)
stack_storage.stack_push(0)
puts "At the top of the stack is " + stack_storage.stack_top.to_s
puts "Poppping elements"
puts stack_storage.stack_pop.to_s
puts stack_storage.stack_pop.to_s
puts stack_storage.stack_pop.to_s
puts stack_storage.stack_pop.to_s
puts stack_storage.stack_pop.to_s
puts stack_storage.stack_pop.to_s
puts "Is the stack empty?"
puts stack_storage.stack_empty.to_s

puts ((Time.now-start_time).to_f).to_s + "s"


