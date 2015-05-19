#!/usr/bin/env ruby
# https://projecteuler.net/problem=64
# http://oeis.org/A003285

limit = 10_000

def period_of_square_root(n)
  a = Math.sqrt(n)
  period = [a.to_i]; d = 1; m = 0; a = a.to_i 
  loop do
    m = d*a - m
    d = (n - m**2) / d
    a = (Math.sqrt(n).to_i + m) / d
    period << a
    return period.count-1 if period[-1] == period[0] * 2
  end
end

values = (2..limit).map {|n| Math.sqrt(n) % 1 == 0 ? nil : n}.compact
p values.map! {|n| period_of_square_root(n).odd? ? 1 : 0 }.inject(:+)
