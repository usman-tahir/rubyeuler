#!/usr/bin/env ruby
# http://www.codewars.com/kata/sum-up-the-random-string

def sum_random_string(s)
  result = s.split(/[^0-9]/).map { |e| e == "" ? nil : e.to_i }.compact.inject(:+)
  return result == nil ? 0 : result
end

str = "In 2015, I want to know how much does iPhone 6+ cost?"
t = "hello world"
p sum_random_string(str)
p sum_random_string(t)
