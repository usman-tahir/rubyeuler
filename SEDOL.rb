#!/usr/bin/env ruby
# http://rosettacode.org/wiki/SEDOLs
# http://en.wikipedia.org/wiki/SEDOL 

SEDOL_array = ["710889","B0YBKJ","406566","B0YBLH","228276","B0YBKL","557910","B0YBKR","585284","B0YBKT","B00030"]

def find_check_digit(string)
  l = ("a".."z").to_a
  sedol = string.split(//).map {|c| c.downcase}
  sedol.each_index do |i| 
    sedol[i] = sedol[i] =~ /[[:alpha:]]/ ? (l.index(sedol[i]) + 10) : sedol[i] = sedol[i].to_i
  end
  sedol.each_index do |i|
    sedol[i] *= 1 if i == 0
    sedol[i] *= 3 if i == 1
    sedol[i] *= 1 if i == 2
    sedol[i] *= 7 if i == 3
    sedol[i] *= 3 if i == 4
    sedol[i] *= 9 if i == 5  
  end  
  t = sedol.inject(:+) % 10; check_digit = "0"
  t % 10 != 0 ? check_digit = (10 - t) : check_digit = 0
  string + check_digit.to_s
end

SEDOL_array.each do |sedol|
  puts sedol + " / " + find_check_digit(sedol)
end	
