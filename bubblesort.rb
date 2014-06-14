# http://rosettacode.org/wiki/Sorting_algorithms/Bubble_sort
start_time = Time.now
array_to_sort1 = [26, 45, 4, 98, 769, 234, 24324, 78, 865, 0, 6, 123, 7, 14345, 5, 12, 211, 1, 3215, 67, 8, 90, 9, 2345, 456]
array_to_sort2 = [7,3,1,5,10,0,4]
test_array = array_to_sort1

def bubble_sort(array)
  sorted = false
  until sorted == true
    counter = 0
    array.each_index do |index|
      break if array[index+1] == nil
      if array [index] > array[index+1]
        array[index], array[index+1] = array[index+1], array[index]
        counter += 1
      end  
    end
    sorted = true if counter == 0
  end
  return array.inspect
end

puts bubble_sort(test_array)

puts ((Time.now - start_time).to_f).to_s + "s"
