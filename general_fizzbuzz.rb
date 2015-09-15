#!/usr/bin/env ruby
# http://rosettacode.org/wiki/General_FizzBuzz

def general_fizzbuzz(max,f1,s1,f2,s2,f3,s3)
  (1..max).each { |i| p i % f3 == 0 ? s3 : i % f2 == 0 ? s2 : i % f1 == 0 ? s1 : i }
end

general_fizzbuzz(20,3,"Fizz",5,"Buzz",7,"Baxx")
