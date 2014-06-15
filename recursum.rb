# recursively sums an array
# from _Think Like A Programmer_ chapter on recursion
start_time = Time.now
test_array = [1,2,3,4,5]

def recursum(array, array_size)
  return 0 if array_size == 0
  last_number = array[array_size-1]
  all_but_last_sum = recursum(array, array_size-1)
  return last_number + all_but_last_sum
end

puts recursum(test_array, test_array.count)	

puts ((Time.now - start_time).to_f).to_s + "s"