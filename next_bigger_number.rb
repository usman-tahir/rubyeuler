#!/usr/bin/env ruby
# http://www.codewars.com/kata/next-bigger-number-with-the-same-digits

def next_bigger_number(n)
  numbers = n.to_s.split("").to_a.permutation.to_a.map { |e| e.join.to_i }.sort.uniq
  numbers.index(n) + 1 == numbers.count ? -1 : numbers[numbers.index(n)+1]
end

[12,513,2017].each { |e| puts "#{e} => #{next_bigger_number(e)}" }
[9,111,531].each { |e| puts "#{e} => #{next_bigger_number(e)}" }
