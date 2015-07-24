#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/07/24/one-swappable-array/

def one_swappable_array(array)
  sorted_array = array.sort
  (0...array.count).each do |i|
    (0...array.count).each do |j|
      return true if swap(array,i,j) == sorted_array
    end
  end
  false
end

def swap(array,i,j)
  t = array.dup
  t[i], t[j] = t[j], t[i]
  return t
end

one = [1,2,6,4,5,3,7]
two = [5,4,3,2,1]
p one_swappable_array(one)
p one_swappable_array(two)
