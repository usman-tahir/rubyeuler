# http://rosettacode.org/wiki/Semiprime
require 'prime'

def semiprime?(number)
  counter = 0
  number.prime_division.each { |n| counter += n[1] }
  counter == 2
end

(1..100).each { |n| p n if semiprime?(n) }
