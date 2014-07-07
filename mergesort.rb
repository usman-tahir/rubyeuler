# http://rosettacode.org/wiki/Sorting_algorithms/Merge_sort
start_time = Time.now
array_to_sort1 = [26, 45, 4, 98, 769, 234, 24324, 78, 865, 0, 6, 123, 7, 14345, 5, 12, 211, 1, 3215, 67, 8, 90, 9, 2345, 456]
array_to_sort2 = [7,3,1,5,10,0,4,8]
test_array = array_to_sort1

def merge_sort(array)
  sorted_array =[]
  mid = (array.count/2)
  sub_arrayi = array[0..mid-1].sort
  sub_arrayj = array[mid..-1].sort
  i_counter = 0
  j_counter = 0
  until sorted_array.count == sub_arrayi.count + sub_arrayj.count
    if sub_arrayi[i_counter] == nil
      sorted_array.push(sub_arrayj[j_counter]) 
      j_counter += 1
    elsif sub_arrayj[j_counter] == nil
      sorted_array.push(sub_arrayi[i_counter])
      i_counter += 1 
    elsif sub_arrayi[i_counter] < sub_arrayj[j_counter]
      sorted_array.push(sub_arrayi[i_counter])
      i_counter += 1
    elsif sub_arrayi[i_counter] > sub_arrayj[j_counter]
      sorted_array.push(sub_arrayj[j_counter])
      j_counter += 1
    else sub_arrayi[i_counter] == sub_arrayj[j_counter]
      sorted_array.push(sub_arrayi[i_counter])
      i_counter += 1   
    end
  end
  sorted_array
end  

puts merge_sort(test_array)     

puts ((Time.now-start_time).to_f).to_s + "s"
