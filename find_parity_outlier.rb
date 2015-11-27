#!/usr/bin/env ruby
# http://www.codewars.com/kata/find-the-parity-outlier

def find_parity_outlier(list)
  parity = [list[0] % 2, list[1] % 2, list[2] % 2].inject(:+) < 2 ? 0 : 1
  list.reject { |e| e % 2 == parity }.first
end

one = [2,4,0,100,4,11,2602,36]
two = [160,3,17919,19,11,13,-21]
p find_parity_outlier(one)
p find_parity_outlier(two)
