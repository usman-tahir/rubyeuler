# http://rosettacode.org/wiki/Averages/Mode
start_time = Time.now
test_array1 = [1, 3, 6, 6, 6, 6, 7, 7, 12, 12, 17]
test_array2 = [1, 2, 4, 4, 1]

def find_mode(array)
  element_counter = nil
  secondary_counter = nil
  array.each do |element|
    if array.count(element) > array.count(element_counter)
      element_counter = element
    end
  end
  array.each do |element|
    if array.count(element) == array.count(element_counter)
      secondary_counter = element if element != element_counter
    end
  end		
  mode = [element_counter] if secondary_counter == nil
  mode = [element_counter, secondary_counter] if secondary_counter != nil
  mode.uniq
end

puts find_mode(test_array1).inspect
puts find_mode(test_array2).inspect
puts ((Time.now-start_time).to_f).to_s + "s"			