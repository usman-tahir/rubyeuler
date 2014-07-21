# http://rosettacode.org/wiki/Logical_operations
# Write a function that takes two logical (boolean) values, and 
# outputs the result of "and" and "or" on both arguments as well 
# as "not" on the first arguments. If the programming language 
# doesn't provide a separate type for logical values, use the 
# type most commonly used for that purpose. 
start_time = Time.now
val1 = true
val2 = false

def logical_ops(boolean1, boolean2)
  puts "#{boolean1} && #{boolean2} == " + (boolean1 && boolean2).to_s
  puts "#{boolean1} || #{boolean2} == " + (boolean1 || boolean2).to_s
  puts "not #{boolean1} == " + (!boolean1).to_s
  puts "#{boolean1} XOR #{boolean2} == " + (boolean1 ^ boolean2).to_s
end

logical_ops(val1, val2)	
puts ((Time.now-start_time).to_f).to_s + "s"
