#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/10/16/largest-possible-remainder/

def largest_possible_remainder(n,d=n)
  div_with_largest_remainder = 1
  (2..d).each { |div| div_with_largest_remainder = div if n % div > n % div_with_largest_remainder }
  [div_with_largest_remainder,n%div_with_largest_remainder]
end

p largest_possible_remainder(20,10)
