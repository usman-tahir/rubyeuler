# http://projecteuler.net/problem=16

def sum_digits_of_two_to_power(nth)
  digits = 2**nth
  result_accumulator = 0
  digits.to_s.each_char do |digit|
    result_accumulator += digit.to_i
  end
  result_accumulator
end

puts sum_digits_of_two_to_power(1000)    