#!/usr/bin/env ruby
# https://projecteuler.net/problem=70
require 'prime'

def phi(n)
  t = []
  # http://www.algebra.com/algebra/homework/word/numbers/Numbers_Word_Problems.faq.question.762354.html
  n.prime_division.each { |e| t << (e[0] - 1); t << (e[0] ** (e[1] - 1)) }
  t.inject(:*)
end

def phi_is_permutation(n)
  n.to_s.split(//).sort == phi(n).to_s.split(//).sort
end

def find_totient_permutation(limit)
  tot_perms = {}
  (2...limit).each { |n| tot_perms[n/phi(n).to_f] = n if phi_is_permutation(n) }
  tot_perms
end

result = find_totient_permutation(10**5)
p result[result.keys.min]
