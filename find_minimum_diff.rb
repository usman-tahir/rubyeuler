#!/usr/bin/env ruby
# http://programmingpraxis.com/2013/10/15/find-the-minimum-difference/

def find_min_diff(list_x,list_y)
  min_diff = (list_x[0] - list_y[0]).abs
  list_x.each do |x|
    list_y.each do |y|
      diff = (x-y).abs
      min_diff = diff if diff < min_diff
    end
  end
  min_diff
end

one = [19,22,24]
two = [37,38,49,88]

p find_min_diff(one,two)

