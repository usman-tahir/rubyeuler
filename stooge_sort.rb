#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Sorting_algorithms/Stooge_sort

def stooge_sort(list, i=0, j=(list.length-1))
  list[i], list[j] = list[j], list[i] if list[j] < list[i]
  if j - i > 1
    t = (j - i + 1)/3
    stooge_sort(list, i, j-t) and stooge_sort(list, i+t, j) and stooge_sort(list, i, j-t)
  end
  return list
end

t = [5,-15,11,18,-14,-20,6,-4,-1,-8,12,-18,-12,-4,-10,-8,13,4,0,16,7,-13,-13,-1,11,-9,
    13,-14,9,-19,-1,14,6,-4,7,-8,-15,-11,-9,3,10,3,-2,-5,12,-8,-2,10,-10,9,14,9,-12,
    19,-16,-6,-13,-18,-3,-13,-12,8,-8,-10,-16,5,8,-10,-10,6,-14,-20,-16,7,15,11,-19,
    -18,10,-15] # from c++ version

p stooge_sort(t)          