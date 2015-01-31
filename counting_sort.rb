# http://rosettacode.org/wiki/Sorting_algorithms/Counting_sort

def counting_sort(array)
  count = Array.new(array.max-array.min+1,0)
  array.each { |n| count[n-array.min] += 1 }
  (0...count.size).map { |i| [i+array.min] * count[i] }.flatten
end

test_array = [100, 2, 56, 200, -52, 3, 99, 33, 177, -199]
p counting_sort(test_array)
