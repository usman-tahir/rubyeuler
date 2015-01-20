# http://rosettacode.org/wiki/Sum_and_product_of_an_array

def sum(array,index=0)
  index >= array.count ? 0 : array[index] + sum(array,index+1)
end

def product(array,index=0)
  index >= array.count ? 1 : array[index] * product(array,index+1)
end

test_array_one = [0,1,2,3]
test_array_two = [1,2,3,4]

p sum(test_array_one)
p sum(test_array_two)
p product(test_array_one)
p product(test_array_two)
