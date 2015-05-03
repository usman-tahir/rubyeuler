#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/05/01/collatz-primes/
require 'prime'

def find_number_of_primes_in_collatz_for(n,cache=[0])  
  original_val = n
  prime_counter = 0
  until n == 1 || cache[n] != nil
    n.even? ? n /= 2 : n = 3 * n + 1
    prime_counter += 1 if n.prime?
    if cache[n] != nil
      cache[original_val] = prime_counter + cache[n]
      return cache[original_val]
    end
  end
  if cache[original_val] == nil
    cache[original_val] == prime_counter
    return prime_counter
  else
    return cache[original_val] + prime_counter
  end
end

cache = [0,0,1]
counter = 1
counter += 1 until find_number_of_primes_in_collatz_for(counter,cache) >= 65
p counter
