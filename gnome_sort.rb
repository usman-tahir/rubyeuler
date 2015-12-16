#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Sorting_algorithms/Gnome_sort

def gnome_sort(list)
  i, j = 1, 2
  while i < list.size do
    if list[i-1] <= list[i]
      (i, j = j, j+1)
    else
      list[i-1], list[i] = list[i], list[i-1]
      i -= 1
      (i, j = j, j + 1) if i == 0
    end
  end
  list
end          

test_array = [100, 2, 56, 200, -52, 3, 99, 33, 177, -199]
p gnome_sort(test_array)