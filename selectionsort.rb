# http://rosettacode.org/wiki/Sorting_algorithms/Selection_sort

array1 = [26, 45, 4, 98, 769, 234, 24324, 78, 865, 0, 6, 123, 7, 14345, 5, 12, 211, 1, 3215, 67, 8, 90, 9, 2345, 456]
array2 = [7,3,1,5,10,0,4]

def selection_sort(ary)
  ary.each_index { |i| (i...ary.count).each { |m| ary[i], ary[m] = ary[m], ary[i] if ary[m] < ary[i] } }
end

p selection_sort(array1)
p selection_sort(array2)
