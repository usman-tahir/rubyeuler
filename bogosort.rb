# http://rosettacode.org/wiki/Sorting_algorithms/Bogosort
start_time = Time.now
array_to_sort1 = [26, 45, 4, 98, 769, 234, 24324, 78, 865, 0, 6, 123, 7, 14345, 5, 12, 211, 1, 3215, 67, 8, 90, 9, 2345, 456]
array_to_sort2 = [7,3,1,5,10,0,4]
test_array = array_to_sort2

bogosorted_array = test_array
counter = 0
until test_array.sort == bogosorted_array
  bogosorted_array.shuffle!
  puts counter += 1
end

puts test_array == bogosorted_array
puts "It took #{counter} bogosort attempts."  

puts ((Time.now - start_time).to_f).to_s + "s"