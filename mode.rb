# http://rosettacode.org/wiki/Averages/Mode
start_time = Time.now
test_array1 = [1, 2, 3, 1, 2, 4, 2, 5, 2, 3, 3, 1, 3, 6]
test_array2 = [1,1,1,1,1,2,2,3,3,3,3]

def find_mode(array)
  results = Hash.new
  array.each do |element|
    if !results.include?(element)
      results[element] = 1
    else
      results[element] += 1
    end
  end
  max_key = array[0]
  max_value = 1
  results.each do |key,val|
    if results[key] > max_value
      max_key = key
      max_value = val
    end
  end
  max_key
end

puts find_mode(test_array1).inspect
puts find_mode(test_array2).inspect
puts ((Time.now-start_time).to_f).to_s + "s"			