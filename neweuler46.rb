# http://projecteuler.net/problem=46
require 'prime'
load 'eulermethods.rb'

def gen_primes_to_test(number)
  primes_to_test = []
  Prime.each(number) do |prime|
    primes_to_test << prime
  end
  primes_to_test
end    

def gen_next_odd_composite(number)
  result_number = number + 2 if number.odd?
  result_number = number + 1 if number.even?
  until result_number.divisors.count > 0
    result_number += 2
  end
  result_number
end

def writeable_as_prime_2x_square?(number)
  test_primes = gen_primes_to_test(number)
  flag = false
  test_primes.each do |prime|
    (1..100).each do |square_base| # just guessing
      flag = true if number == prime + (2 * (square_base ** 2))
    end
  end
  flag
end    

def find_smallest_odd_composite
  counter = 9
  until writeable_as_prime_2x_square?(counter) == false
    counter = gen_next_odd_composite(counter)
  end
  counter
end

puts find_smallest_odd_composite