#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/06/23/closest-two-sum-to-zero/

def closest_two_sum_to_zero(array)
  closest_element_one = array[0] 
  closest_element_two = array[1]
  distance_from_zero = (array[0] + array[1]).abs
  (1...array.count).each do |x|
    (x+1...array.count).each do |y|
      if (array[x] + array[y]).abs < distance_from_zero
        closest_element_one = array[x]
        closest_element_two = array[y]
        distance_from_zero = (array[x] + array[y]).abs
      end
    end
  end
  [closest_element_one,closest_element_two]
end

test = [45, -29, -96, -7, -17, 72, -60]
p closest_two_sum_to_zero(test)
