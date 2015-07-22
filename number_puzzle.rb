#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/07/21/a-number-puzzle/

def generate_n_digit_numbers(n)
  (0...n).to_a.permutation.to_a.map { |e| digits_to_int(e) }.reject { |e| e.to_s.length < n }
end

def digits_to_int(a)
  a.map { |e| e.to_s }.join.to_i
end

def n_digit_number_divisible_by_n(i)
  i % i.to_s.length == 0
end

def n_digit_number_divisible_by_steps(i)
  (1...i.to_s.length+1).each { |d| return false unless n_digit_number_divisible_by_n(i.to_s[0...d].to_i) }
end

def find_solution
  generate_n_digit_numbers(10).each { |n| return n if n_digit_number_divisible_by_steps(n) }
end

p find_solution
