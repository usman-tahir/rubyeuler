#!/usr/bin/env ruby
# https://projecteuler.net/problem=124
require 'prime'

def find_radical(n)
  accumulator = 1
  n.prime_division.each {|e| accumulator *= e[0]}
  accumulator
end

limit = 100_000; vals = {}; vals[1] = 1
(1..limit).each { |n| vals[n] = find_radical(n) }
p Hash[vals.sort_by { |k,v| [v, k]}].to_a[9999][0]
