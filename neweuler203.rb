#!/usr/bin/env ruby
# https://projecteuler.net/problem=203
require 'prime'

def pascal(n)
  line = [1]
  (0...n).each { |k| line << ((line[k]) * (n-k) / (k+1)) }
  line
end

def squarefree(n)
  n.prime_division.each { |e| return false if e[1] == 2 }
  return true
end

squarefrees = []
(1..49).each do |row|
  pascal(row).each do |n|
     squarefrees << n if squarefree(n)
  end
end

p squarefrees.uniq.inject(:+)

sq = []
(1..49).each do |row|
  sq << pascal(row)
end
p sq.flatten.uniq.count
