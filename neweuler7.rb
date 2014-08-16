# http://projecteuler.net/problem=7
require 'prime'

def find_nth_prime(nth_value)
  primes = Prime.first nth_value
  primes.max
end  

puts find_nth_prime(10_001)