# http://rosettacode.org/wiki/Largest_int_from_concatenated_ints
start_time = Time.now
test_set_one = [1, 34, 3, 98, 9, 76, 45, 4]
test_set_two = [54, 546, 548, 60]

def find_largest_concat_int(array)
  concatenated_ints = array.permutation.to_a
  largest_int = []
  outer_index = 0
  until concatenated_ints[outer_index] == nil
    largest_int << concatenated_ints[outer_index].join.to_i
    outer_index += 1
  end  
  return largest_int.max
end  

puts "test set one: " + find_largest_concat_int(test_set_one).to_s
puts "test set two: " + find_largest_concat_int(test_set_two).to_s

puts ((Time.now - start_time).to_f).to_s + "s"