# http://rosettacode.org/wiki/Catamorphism

def fold(array, initial_value=0)
  array.reduce(initial_value, :+)
end

test_array = [1,2,3,4,5]

p fold(test_array)
p fold(test_array,15)
  