#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Amicable_pairs

def factors(n)
  n_factors =[]
  (1..Math.sqrt(n)).select { |f| n % f == 0 }.each { |v| n_factors << n/v; n_factors << v }
  n_factors.uniq.sort - [n]
end

def sum(array,index=0)
  index == array.length ? 0 : array[index] + sum(array,index+1)
end

def find_amicable_pairs(limit)
  pairs = []; amicables = {}
  (1...limit).each { |n| amicables[n] = sum(factors(n)) }
  amicables.each { |k,v| pairs << [k,v].sort if amicables[v] == k && v != k }
  pairs.uniq
end

p find_amicable_pairs(20_000)
