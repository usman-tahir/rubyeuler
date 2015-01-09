# http://programmingpraxis.com/2014/11/28/a-prime-number-puzzle/
require 'prime'

def each_two_prime(number)
  primes = []
  number_length = number.to_s.length
  (0...number_length-1).each do |index|
    test_val = number.to_s[index..index+1].to_i
    if test_val.prime? && !primes.include?(test_val)
      primes << test_val
    else
      return false
    end
  end
  return true
end

def find_m(number)
  start = number.to_s
  (number-1).times do
    start << "0"
  end
  counter = start.to_i
  until each_two_prime(counter)
    counter += 1
  end
  counter
end

results = []
(1..9).each do |number|
  results << "#{number} :: #{find_m(number)}"
end

puts results
