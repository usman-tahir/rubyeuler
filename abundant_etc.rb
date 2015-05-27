#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Abundant,_deficient_and_perfect_number_classifications
require 'prime'

def sum_div(n)
  n.prime_division.map! { |e| ((e[0]**(e[1]+1)) - 1) / (e[0] - 1) }.inject(:*)
end

vals = (2..20_000).to_a.map { |e| sum_div(e) == (e*2) ? 0 : sum_div(e) > (e*2) ? 1 : -1 }

p "deficient: #{vals.count(-1)}"
p "perfect: #{vals.count(0)}"
p "abundant: #{vals.count(1)}"
