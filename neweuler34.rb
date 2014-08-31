# http://projecteuler.net/problem=34
load 'eulermethods.rb'

def digit_factorials(number)  
  accumulator = 0
  number.to_a.each do |digit|
    accumulator += digit.factorial
  end
  accumulator == number
end

def find_digit_factorials
  accumulator = 0
  (3..3_000_000).each do |number|
    accumulator += number if digit_factorials(number) == true
  end
  accumulator
end

puts find_digit_factorials      
