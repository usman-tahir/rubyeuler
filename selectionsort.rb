# http://rosettacode.org/wiki/Sorting_algorithms/Selection_sort
start_time = Time.now
array_to_sort1 = [26, 45, 4, 98, 769, 234, 24324, 78, 865, 0, 6, 123, 7, 14345, 5, 12, 211, 1, 3215, 67, 8, 90, 9, 2345, 456]
array_to_sort2 = [7,3,1,5,10,0,4]
test_array = array_to_sort1

def selection_sort(array_to_sort)
  iterations = array_to_sort.count
  array_to_sort.each_index do |index|
    min = index
    swap_index = index
    while swap_index < iterations
      array_to_sort[min], array_to_sort[swap_index] = array_to_sort[swap_index], array_to_sort[min] if array_to_sort[min] > array_to_sort[swap_index]
      swap_index += 1
    end
  end
  array_to_sort		
end

puts selection_sort(test_array).inspect
puts ((Time.now - start_time).to_f).to_s + "s"