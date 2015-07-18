#!/usr/bin/env ruby
# http://programmingpraxis.com/2014/02/18/two-interview-questions/

# question 1
# given n, find smallest three digit number such that the product of its digits is n

def find_smallest_three_digit_product(n,t=100)
  digit_product = -> i { i.to_s.split(//).map { |e| e.to_i }.inject(:*) }
  t += 1 until digit_product[t] == n
  return t
end

p find_smallest_three_digit_product(100)

# question 2
def compare_arrays(a,b)
  b.sort - a.sort
end

one = [4,7,9,6,1,3,8] 
two = [3,4,1,8,2,9,5,7,6]
p compare_arrays(one,two)
