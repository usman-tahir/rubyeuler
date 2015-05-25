#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Sequence_of_non-squares

def nonsquare(number)
  (number + ((0.5) + Math.sqrt(number))).floor
end  	

def show_sequence_range(start_number, end_number)
  seq = {}
  (start_number..end_number).each { |n| seq[n] = nonsquare(n) }
  return seq
end

def test_below(limit)
  (1...limit).each { |i| return false if Math.sqrt(nonsquare(i)) % 1 == 0 }
  return true
end		

p show_sequence_range(1, 22)	
p test_below(1_000_000)