#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/10/06/the-iron-bar/

def iron_bar(*n)
  actual_median = n.count.odd? ?
    "n.sort[n.count/2]" : "(n.sort[(n.count/2)-1] + n.sort[(n.count/2)]) / 2.0"
  iron_bar_median = n[0]
  (1...n.count).each do |i| 
    iron_bar_median += n[i] > iron_bar_median ? 1 : n[i] < iron_bar_median ? -1 : 0
  end
  { "actual_median" => eval(actual_median), "iron_bar_median" => iron_bar_median }
end

p iron_bar(29, 26, 31, 30, 30, 28, 28, 31, 24, 32)
