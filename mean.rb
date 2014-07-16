# http://rosettacode.org/wiki/Averages/Arithmetic_mean
# mean of [] is 0
# mean of [1, 2, 3, 4] is 2.5
start_time = Time.now
test_array1 = []
test_array2 = [1,2,3,4]

def find_mean(array)
  return 0 if array.count == 0
  return (array.inject(:+).to_r/array.count.to_r).to_f if array.count != 0
end

puts find_mean(test_array1)
puts find_mean(test_array2)
puts ((Time.now-start_time).to_f).to_s + "s"
