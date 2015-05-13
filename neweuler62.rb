#!/usr/bin/env ruby
# https://projecteuler.net/problem=62

def n_cubic_permutations(n)
  result = Hash.new; counter = 1
  loop do
    t = counter ** 3
    val = t.to_s.split(//).sort
    result[val] == nil ? result[val] = [t] : result[val] << t
    return result[val][0] if result[val].count == n
    counter += 1
  end
end

p n_cubic_permutations(5)
