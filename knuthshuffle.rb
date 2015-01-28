# http://rosettacode.org/wiki/Knuth_shuffle

test_array = [0,1,2,3,4,5,6,7,8,9]

def knuth_shuffle(array)
  array.each_index { |i| j = rand(0..i); array[i], array[j] = array[j], array[i] }
end  	

p knuth_shuffle(test_array)
