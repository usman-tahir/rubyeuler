# http://projecteuler.net/problem=37
require 'prime'

def left_truncatable_prime?(number)
  number_string = number.to_s
  left_truncatable_array = []
  (number.to_s.length-1).times do
    left_truncatable_array << number_string.reverse!.chop!.reverse!.to_i.prime?
  end
  left_truncatable_array << number_string.to_i.prime?
  !left_truncatable_array.include?(false) && left_truncatable_array.include?(true) 
end

def right_truncatable_prime?(number)
  number_string = number.to_s
  right_truncatable_array = []
  (number.to_s.length-1).times do
    right_truncatable_array << number_string.chop!.to_i.prime?
  end
  right_truncatable_array << number_string.to_i.prime?
  !right_truncatable_array.include?(false) && right_truncatable_array.include?(true)
end  

def find_sum_of_eleven_truncatable_primes
  truncatable_primes_array = []
  until truncatable_primes_array.count == 11
    Prime.each do |prime_number|
      next if prime_number < 8
      if left_truncatable_prime?(prime_number) && right_truncatable_prime?(prime_number)
        truncatable_primes_array << prime_number 
        puts prime_number
      end
      break if truncatable_primes_array.count == 11
    end  
  end
  truncatable_primes_array.inject(:+)    
end  

puts find_sum_of_eleven_truncatable_primes