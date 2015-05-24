#!/usr/bin/env ruby
# https://projecteuler.net/problem=60
require 'prime'

def concat_to_prime(one,two)
  (one.to_s + two.to_s).to_i.prime? && (two.to_s + one.to_s).to_i.prime?
end

def concat_multiple_primes(array)
  (0...array.count).each do |x|
    (x+1...array.count).each do |y|
      return false unless concat_to_prime(array[x],array[y])
    end
  end
  return true
end


def find_prime_pair_sets(limit)
  prime_list = Prime.each(10_000).to_a
  pair_sets = {}
  prime_list.each_index do |x|
    (x...prime_list.count).each do |y|
      one = prime_list[x]; two = prime_list[y]
      if concat_to_prime(one,two)
        if pair_sets[one]
          pair_sets[one] << two if concat_multiple_primes(pair_sets[one] + [two])
          return pair_sets[one] if pair_sets[one].count == limit
        else
          pair_sets[one] = [one,two]
        end
      end
    end
  end
  pair_sets = pair_sets.select {|k,v| v.count >= (limit-1)}
  prime_list.each do |p|
    pair_sets.each do |k,v|
      return (v + [p]) if concat_multiple_primes(v + [p]) && !v.include?(p)
    end
  end
end

limit = 5
result = find_prime_pair_sets(limit)
puts "#{result}: #{result.inject(:+)}"
