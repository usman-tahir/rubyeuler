#!/usr/bin/env ruby
# https://projecteuler.net/problem=187
require 'prime'

def two_prime_factors(n)
  p_f = 0
  n.prime_division.each { |e| p_f += 1; p_f += e[1] - 1; return false if p_f > 2 }
  p_f == 2
end

count = 0; limit = 10**8
(2..limit).each { |n| count += 1 if two_prime_factors(n) }
p count

