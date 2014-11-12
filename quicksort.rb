# http://rosettacode.org/wiki/Sorting_algorithms/Quicksort

def quicksort(array)
  return array if array.length <= 1
  lesser = []; equiv = []; greater = []
  pivot = array[array.length/2]
  array.each do |element|
    if element < pivot
      lesser << element
    elsif element > pivot
      greater << element
    else element == pivot
      equiv << element     
    end
  end   
  quicksort(lesser) + equiv + quicksort(greater) 
end    
        
test_array = [4, 65, 2, -31, 0, 99, 2, 83, 782, 1]
p quicksort(test_array)
