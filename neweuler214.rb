#!/usr/bin/env ruby
# https://projecteuler.net/problem=214
require 'prime'

def phi(n)
  t = []
  n.prime_division.each { |e| t << (e[0] - 1); t << (e[0] ** (e[1] - 1)) }
  return t.inject(:*)
end

def totient_chain(n)
  chain = 2 # to count initial value plus end value
  (n = phi(n); chain += 1) until phi(n) == 1
  return chain
end

def find_prime_totient_chains(limit)
  generator = Prime.each(2)
  accumulator = 0; pr = generator.next
  until pr > limit
    accumulator += pr if totient_chain(pr) == 25
    pr = generator.next
  end
  return accumulator
end

p find_prime_totient_chains(40000000)
