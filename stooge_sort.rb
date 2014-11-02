# http://rosettacode.org/wiki/Sorting_algorithms/Stooge_sort

test_array = [5,-15,11,18,-14,-20,6,-4,-1,-8,12,-18,-12,-4,-10,-8,13,4,0,16,7,-13,-13,-1,11,-9,
    13,-14,9,-19,-1,14,6,-4,7,-8,-15,-11,-9,3,10,3,-2,-5,12,-8,-2,10,-10,9,14,9,-12,
    19,-16,-6,-13,-18,-3,-13,-12,8,-8,-10,-16,5,8,-10,-10,6,-14,-20,-16,7,15,11,-19,
    -18,10,-15] # from c++ version

def stooge_sort(array, i=0, j=(array.length-1))
  if array[j] < array[i]
    array[i], array[j] = array[j], array[i]
  end
  if j - i > 1
    t = (j - i + 1)/3
    stooge_sort(array, i, j-t)
    stooge_sort(array, i+t, j)
    stooge_sort(array, i, j-t)
  end
  array
end

p stooge_sort(test_array)          