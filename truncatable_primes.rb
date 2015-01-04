# http://rosettacode.org/wiki/Truncatable_primes
require 'prime'

def left_truncatable_prime(number)
  return false if !number.prime?
  return false if number.to_s.include?("0")
  until number.to_s.length == 1
    number = number.to_s[1..-1].to_i
    return false if number.to_s[0] == "0"
    return false if !number.prime?
  end
  true
end

def right_truncatable_prime(number)
  return false if !number.prime?
  return false if number.to_s.include?("0")
  until number.to_s.length == 1
    number = number.to_s.chop.to_i
    return false if !number.prime?
  end
  true
end

def left_and_right_truncatable(number)
  left_truncatable_prime(number) && right_truncatable_prime(number)
end

largest_left = 0
largest_right = 0
(1..1_000_000).each do |number|
  if number > largest_left && left_truncatable_prime(number)
    largest_left = number
    #p largest_left
  end
  if number > largest_right && right_truncatable_prime(number)
    largest_right = number
    #p largest_right
  end
end

p largest_left
p largest_right
