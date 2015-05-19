#!/usr/bin/env ruby
# https://projecteuler.net/problem=64
# http://oeis.org/A003285

limit = 13

def period_of_square_root(n)
  period, e = [], Math.sqrt(n).floor
  period << e
  e = (1 / (Math.sqrt(n) - e))
  period << e.floor
  (e = (1 / (e - e.floor)); period << e.floor) until period[-1] == period[0] * 2
  return period
end

#values = (2..limit).map {|n| Math.sqrt(n) % 1 == 0 ? nil : n}.compact
#p values.map! {|n| period_of_square_root(n).even? ? 1 : 0 }.inject(:+)

p period_of_square_root(35)