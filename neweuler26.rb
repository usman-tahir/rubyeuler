#!/usr/bin/env ruby
# https://projecteuler.net/problem=26
require 'prime'

def phi(n)
  t = []
  n.prime_division.each { |e| t << (e[0] - 1); t << (e[0] ** (e[1] - 1)) }
  t.inject(:*)
end

non_reptends = (1..1000).to_a - [7, 17, 19, 23, 29, 47, 59, 61, 97, 109, 113, 131, 149, 167, 
  179, 181, 193, 223, 229, 233, 257, 263, 269, 313, 337, 367, 379, 383, 
  389, 419, 433, 461, 487, 491, 499, 503, 509, 541, 571, 577, 593, 619, 
  647, 659, 701, 709, 727, 743, 811, 821, 823, 857, 863, 887, 937, 941, 
  953, 971, 977, 983]

# zero out all indices which aren't reptend primes!
# reptend primes get replaced with phi(reptend)
val = [0,0] + (2..1000).to_a.map { |i| non_reptends.include?(i) ? 0 : phi(i) }
p val.find_index(val.max)
