# http://programmingpraxis.com/2015/01/06/lucas-carmichael-numbers/
require 'prime'

def lucas_carmichael?(number)
  added_one = number + 1
  prime_factors = Prime.prime_division(number).flatten - [1]
  return false if prime_factors.count < 2
  Prime.each(Math.sqrt(number)) do |prime|
    return false if number % (prime **2) == 0
  end
  p number
  prime_factors.each do |num|
    return false if prime_factors.count(num) > 1
    return false if added_one % (num + 1) != 0 
  end
end

def find_lc_below(number)
  lcs = []
  (1..number).each do |num|
    lcs << num if lucas_carmichael?(num)
  end
  lcs
end

p find_lc_below(1_000_000)