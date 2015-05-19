#!/usr/bin/env ruby
# https://projecteuler.net/problem=65

def convergents_of_e(vals_for_e)
  base = "(2"; counter = 1; offset = 1
  until counter == vals_for_e
    if (counter + offset) % 3 == 0
      base << " + (1 / (#{offset * 2}.to_r"
      offset += 1
    else 
      base << " + (1 / (1.to_r"
      counter += 1
    end
  end
  base.count("(").times { base << ")" }
  eval(base)
end

# not sure what's happening, but my convergents_of_e method
# up there is skipping each n % 3 == 0
# so: long 100 - (1..100).map thing is to find the right index
# below 100
val = convergents_of_e(100 - (1..100).map {|n| n % 3 == 0 ? 1 : 0}.inject(:+))
p val.numerator.to_s.split(//).to_a.map {|e| e.to_i}.inject(:+)
