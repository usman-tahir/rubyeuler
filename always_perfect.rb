#!/usr/bin/env ruby
# http://www.codewars.com/kata/always-perfect

def always_perfect(n, ints = n.split(','))
  ints.each { |i| return "incorrect input" if i.to_i == nil }
  (0...ints.count-1).each { |i| return "not consecutive" if ints[i].to_i + 1 != ints[i+1].to_i }
  square = ints.map { |e| e.to_i }.inject(:*) + 1
  return [square, Math.sqrt(square).to_i]
end

puts always_perfect("1,2,3,4")
