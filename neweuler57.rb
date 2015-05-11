#!/usr/bin/env ruby
# https://projecteuler.net/problem=57

def expand
  counter = 0
  start = "1 + 1/(2.to_r"
  (1...1000).each do |n|
    start << "+ 1/(2.to_r"
    temp = start + (")" * (n+1))
    result = eval(temp).to_s.split("/").to_a
    counter += 1 if result[0].length > result[1].length 
  end
  counter
end

p expand
