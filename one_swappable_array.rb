#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/07/24/one-swappable-array/

def one_swappable_array(array)
  sorted_array = array.sort
  array.each_with_index { |i| array.each_with_index { |j| return true if swap(array,i,j) == sorted_array } }
  return false
end

def swap(array,i,j)
  t = array.dup
  t[i], t[j] = t[j], t[i]
  return t
end

def new_one_swappable_array(array)
  array.each_with_index.map { |e,i| i == 0 ? e : array[i] > array[i-1] ? e : nil }.compact.count + 2 == array.count
end


one = [1,2,6,4,5,3,7]
two = [5,4,3,2,1]
p one_swappable_array(one)
p one_swappable_array(two)
p new_one_swappable_array(one)
p new_one_swappable_array(two)