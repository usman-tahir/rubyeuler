# http://projecteuler.net/problem=36

def palindromic_in_base_ten(number)
  number.to_s == number.to_s.reverse
end

def palindromic_in_base_two(number)
  binary_number = number.to_s(2)
  binary_number == binary_number.reverse
end  

result_accumulator = 0
(1...1_000_000).each do |number|
  result_accumulator += number if palindromic_in_base_two(number) && palindromic_in_base_ten(number)
end

puts result_accumulator  