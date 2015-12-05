#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/12/04/minimum-split/

def minimum_split(list)
  split = 1
  split_difference = (list[split] - list[split+1..-1].inject(:+)).abs
  (1...list.count).each do |i|
    current_diff = (list[i] - list[i-1..-1].inject(:+)).abs
    if split_difference > current_diff
      split, split_difference = i, current_diff
    end
  end
  return split 
end

list = [3,7,4,2,1]
p minimum_split(list)
