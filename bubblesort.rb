#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Sorting_algorithms/Bubble_sort

def bubble_sort(a)
  while true
    c = 0
    (1...a.count).each { |i| (a[i-1], a[i] = a[i], a[i-1]; c += 1) if a[i-1] > a[i] }    
    return a if c == 0
  end
end

test1 = [26, 45, 4, 98, 769, 234, 24324, 78, 865, 0, 6, 123, 7, 14345, 5, 12, 211, 1, 3215, 67, 8, 90, 9, 2345, 456]
test2 = [7,3,1,5,10,0,4]

p bubble_sort(test1)
p bubble_sort(test2)
