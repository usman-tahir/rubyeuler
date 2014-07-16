# http://rosettacode.org/wiki/Averages/Median
start_time = Time.now
test_array1 = [4.1, 5.6, 7.2, 1.7, 9.3, 4.4, 3.2]
test_array2 = [4.1, 7.2, 1.7, 9.3, 4.4, 3.2]

def find_median(array)
  array.sort!
  median = array[array.count/2] if array.count.odd?
  median = (array[array.count/2] + array[(array.count/2)-1])/2 if array.count.even?
  median
end

puts "The median of " + test_array1.inspect + " is: " + find_median(test_array1).to_s
puts "The median of " + test_array2.inspect + " is: " + find_median(test_array2).to_s
puts ((Time.now-start_time).to_f).to_s + "s"



