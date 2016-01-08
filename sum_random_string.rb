#!/usr/bin/env ruby
# http://www.codewars.com/kata/sum-up-the-random-string

sum_random_string = -> s { s.split(/[^0-9]/).map { |e| e == "" ? nil : e.to_i }.compact.inject(:+) || 0 }
s, t = "In 2015, I want to know how much does iPhone 6+ cost?", "hello world"
p sum_random_string[s]; p sum_random_string[t]
