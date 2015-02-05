# http://rosettacode.org/wiki/Sorting_algorithms/Shell_sort

def shell_sort(arr)
  array = arr.dup
  gap = array.count/2
  gap.downto(0).each do |g|
    (g...array.count).each do |i|
      temp = array[i]; j = i
      while (j >= g) && array[j-g] > temp
        array[j] = array[j-g]; j -= g
      end
      array[j] = temp
    end
    gap /= 2
  end
  array
end

test_array = [6, 5, 3, 1, 8, 7, 2, 4]
p shell_sort(test_array)