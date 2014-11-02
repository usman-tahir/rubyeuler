# http://rosettacode.org/wiki/Sorting_algorithms/Gnome_sort

test_array = [100, 2, 56, 200, -52, 3, 99, 33, 177, -199] # from C++ version

def gnome_sort(array)
  i = 1
  j = 2
  while i < array.size do
    if array[i-1] <= array[i]
      i = j
      j = j + 1
    else
      array[i-1], array[i] = array[i], array[i-1] # swap
      i -= 1
      if i == 0 then
        i, j = j, j + 1
      end
    end
  end
  array
end          

p gnome_sort(test_array)