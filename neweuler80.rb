# https://projecteuler.net/problem=80
require 'bigdecimal'
require 'bigdecimal/math'
load 'eulermethods.rb'
include BigMath

def digital_sum_of_irrational(number) 
  decimal_string = BigDecimal.new(number.to_s).sqrt(100).to_s
  accumulator = 0
  (1..101).each do |index|
    accumulator += decimal_string[index].to_i
  end
  accumulator  
end

def rational_square_root(number)
  Math.sqrt(number) % 1 == 0
end  

def find_first_hundred_digital_sums
  accumulator = 0
  (1..100).each do |number|
    if !rational_square_root(number)
      accumulator += digital_sum_of_irrational(number)
    end
  end
  accumulator
end

puts find_first_hundred_digital_sums
       