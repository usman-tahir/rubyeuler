# http://rosettacode.org/wiki/Binary_search
start_time = Time.now

test_array = [0,1,4,5,6,7,8,9,12,26,45,67,78,90,98,123,211,234,456,769,865,2345,3215,14345,24324]
def binary_search(array_to_search, low, high, value_to_find)
  return nil if high < low
  mid = (low + high)/2
  case 
  when array_to_search[mid] > value_to_find
    binary_search(array_to_search, low, mid-1, value_to_find)
  when array_to_search[mid] < value_to_find
    binary_search(array_to_search, mid+1, high, value_to_find)
  else 
    mid
  end
end  	

puts binary_search(test_array, 0, test_array.count, 11).inspect
puts binary_search(test_array, 0, test_array.count, 211).inspect

puts ((Time.now - start_time).to_f).to_s + "s"