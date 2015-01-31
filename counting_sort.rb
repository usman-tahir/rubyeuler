# http://rosettacode.org/wiki/Sorting_algorithms/Counting_sort

def find_max(array,max_value=0)
  array.each { |elem| max_value = elem if elem > max_value }
  max_value
end

def find_min(array,min_value=0)
  array.each { |elem| min_value = elem if elem < min_value }
  min_value
end

def counting_sort(array)
  min_val = find_min(array)
  max_val = find_max(array)
  count = Array.new(max_val-min_val+1,0)
  array.each { |n| count[n-min_val] += 1 }
  (0...count.size).map { |i| [i+min_val] * count[i] }.flatten
end

test_array = [100, 2, 56, 200, -52, 3, 99, 33, 177, -199]
p counting_sort(test_array)
