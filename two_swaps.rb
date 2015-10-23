#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/10/23/two-swaps/

def swap(index_a,index_b,list)
  list[index_b], list[index_a] = list[index_a], list[index_b]
  return list
end

def two_swap_sort(list)
  lg, sm = 0, 0
  (0..2).each { |i| lg = i if list[i] > list[lg] }
  swap(lg,2,list) if lg != 2
  (0..2).each { |i| sm = i if list[i] < list[sm] }
  swap(sm,0,list) if sm != 0
  list
end

10.times do
  list = [rand(100), rand(100), rand(100)]
  sorted_list = two_swap_sort(list)
  puts "#{sorted_list} is sorted: #{sorted_list == list.sort}"
end
