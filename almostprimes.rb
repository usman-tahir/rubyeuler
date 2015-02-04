# http://rosettacode.org/wiki/Almost_prime
require 'prime'

def almost_prime(number,order)
  counter = 0
  number.prime_division.each { |n| counter += n[1] }
  counter == order
end

def find_ten_k_almost(order)
  results = []
  counter = 1
  until results.count == 10
    results << counter if almost_prime(counter,order)
    counter += 1
  end
  results
end

(1..5).each { |order| p find_ten_k_almost(order) }
