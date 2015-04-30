#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/04/24/minimum-impossible-sum/

def find_minimum_impossible_sum(list)
  return 1 if !list.include?(1)
  calculables = []
  (1...list.length).each do |i|
    list.combination(i).to_a.each { |i| calculables << i.inject(:+) }
  end
  calculables.sort!.uniq!.each_index do |i|
    return calculables[i]+1 if calculables[i+1] != calculables[i]+1
  end
end

test_list = [4,13,2,3,1]
p find_minimum_impossible_sum(test_list)
