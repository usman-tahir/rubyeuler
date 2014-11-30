# http://programmingpraxis.com/2013/06/18/3sum/

def find_zerosum_terms(array)
  solutions =[]
  array_length = array.length 
  (0...array_length).each do |outer_index|
    (outer_index...array_length).each do |inner_index|
      test_val = -(array[outer_index] + array[inner_index])
      if array.include?(test_val)
        solutions << [array[outer_index],array[inner_index],test_val]
      end  
    end
  end
  solutions.each do |solution|
    solution.sort!
  end
  solutions.uniq
end

test_array = [8, -25, 4, 10, -10, -7, 2, -3]  

p find_zerosum_terms(test_array)
