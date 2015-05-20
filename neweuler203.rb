#!/usr/bin/env ruby
# https://projecteuler.net/problem=203
require 'prime'

def pascal(n)
  line = [1]
  (0...n).each { |k| line << ((line[k]) * (n-k) / (k+1)) }
  line
end

def squarefree(n)
  n.prime_division.each { |e| return false if e[1] != 1 }
  return true
end

pascals_numbers = []
(1..50).each {|n| pascals_numbers << pascal(n)}
p pascals_numbers.flatten.uniq.map {|e| squarefree(e) ? e : 0}.inject(:+)
