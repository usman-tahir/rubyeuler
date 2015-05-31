#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/05/29/perrin-pseudoprimes/
require 'prime'

def perrin_number(n)
  n == 0 ? 3 : n == 1 ? 0 : n == 2 ? 2 : (perrin_number(n-2) + perrin_number(n-3)) 
end

def gen_perrins(limit)
  counter = 1; perrins = {}
  loop do
    t = perrin_number(counter)
    break if t > limit
    perrins[counter] = t; counter += 1
  end
  perrins
end

def perrin_primes(list)
  list.map {|e| e.prime? ? e : nil}.compact.uniq
end

limit = 1_000_000
list = gen_perrins(limit)
p perrin_primes(list.values)
