#!/usr/bin/env ruby
# https://projecteuler.net/problem=72
require 'prime'

def phi(n)
  t = []
  n.prime_division.each { |e| t << (e[0] - 1); t << (e[0] ** (e[1] - 1)) }
  t.inject(:*)
end

rpfs = {}
(2..1_000_000).each { |e| rpfs[e] = phi(e) unless rpfs[e] }
p rpfs.values.inject(:+)
