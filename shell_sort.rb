# http://rosettacode.org/wiki/Sorting_algorithms/Shell_sort

def shell_sort(arr)
  array = arr.dup
  len = array.count
  gap = len/2
  while gap > 0
    (gap...len).each do |i|
      temp = array[i]
      j = i
      while (j >= gap) && array[j-gap] > temp
        array[j] = array[j-gap]
        j -= gap
      end
      array[j] = temp
    end
    gap /= 2
  end
  array
end

test_array = [6, 5, 3, 1, 8, 7, 2, 4]
p shell_sort(test_array)