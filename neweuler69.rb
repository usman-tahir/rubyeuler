#!/usr/bin/env ruby
# https://projecteuler.net/problem=69
require 'prime'

def phi(n)
  t = []
  # http://www.algebra.com/algebra/homework/word/numbers/Numbers_Word_Problems.faq.question.762354.html
  n.prime_division.each { |e| t << (e[0] - 1); t << (e[0] ** (e[1] - 1)) }
  t.inject(:*)
end

max_res = 1; lgst = 2
(3..1_000_000).each {|n| (val = n/phi(n).to_f); (max_res, lgst = val, n) if val > max_res }
puts "#{lgst}: #{max_res}"
