# http://rosettacode.org/wiki/Order_two_numerical_lists
# lists from http://rosettacode.org/wiki/Order_two_numerical_lists#Ela
list_one = [1,2,1,3,2]
list_two = [1,2,0,4,4,0,0,0]

# lists from http://rosettacode.org/wiki/Order_two_numerical_lists#Mathematica
list_three = [1,2]
list_four = [1,2,4,4,0,0]

def order_two_lists(array1, array2)
  value = (array1 <=> array2) < 0
end

puts "#{list_one.inspect} < #{list_two.inspect}: " + order_two_lists(list_one, list_two).to_s  
puts "#{list_three.inspect} < #{list_four.inspect}: " + order_two_lists(list_three, list_four).to_s