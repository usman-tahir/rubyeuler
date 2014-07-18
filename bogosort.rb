# http://rosettacode.org/wiki/Sorting_algorithms/Bogosort
start_time = Time.now
array_to_sort1 = [26, 45, 4, 98, 769, 234, 24324, 78, 865, 0, 6, 123, 7, 14345, 5, 12, 211, 1, 3215, 67, 8, 90, 9, 2345, 456]
array_to_sort2 = [7,3,1,5,10,0,4]
a = [5,4,1,10,2]

test_array = array_to_sort2
def test_array.bogosort
  bogosorted_array = self
  sorted_test_array = bogosorted_array.sort # to check sorting
  counter = 0
  until bogosorted_array == sorted_test_array
    bogosorted_array.shuffle!
    puts "#{counter += 1} attempts" if counter > 1
    counter += 1
  end	
  bogosorted_array
end	

puts test_array.bogosort.inspect
puts test_array.bogosort == test_array.sort 
puts a.bogosort.inspect

puts ((Time.now - start_time).to_f).to_s + "s"
