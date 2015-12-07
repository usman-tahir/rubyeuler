#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Greatest_common_divisor
# recursive, adapted from sicp

def greatest_common_div(a, b)
  return b == 0 ? a : greatest_common_div(b, (a % b))
end

p greatest_common_div(36,33)
p greatest_common_div(36,16)
p greatest_common_div(8,24)  
  