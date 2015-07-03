#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/07/03/assign-y/

def assign_y(x,a,b)
  [a,b][x]
end

p assign_y(1,12,6)
p assign_y(0,12,6)