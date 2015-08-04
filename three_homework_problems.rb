#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/08/04/three-homework-problems/

def sum_of_squares_of_two_largest_ints(one, two, three, num=[one,two,three])
  return num.max == num.min ? (num[0] ** 2) + (num[1] ** 2) : num.map { |n| n == num.min ? nil : n ** 2 }.compact.inject(:+)
end

def is_base_ten_palindrome(n)
  return n % 10 == 0 ? false : n.to_s == n.to_s.reverse
end

p sum_of_squares_of_two_largest_ints(1,2,3)
p sum_of_squares_of_two_largest_ints(2,1,3)
p sum_of_squares_of_two_largest_ints(3,1,2)
p sum_of_squares_of_two_largest_ints(3,3,3)
p is_base_ten_palindrome(432)
