# http://rosettacode.org/wiki/Sorting_algorithms/Insertion_sort

def insertion_sort(array)
  (1..array.length-1).each do |i|
    value = array[i]
    j = i-1
    while j >= 0 and array[j] > value do
      array[j+1] = array[j]
      j = j - 1
    end
    array[j+1] = value
  end
  array
end      

test_array = [4, 65, 2, -31, 0, 99, 2, 83, 782, 1]

p insertion_sort(test_array)