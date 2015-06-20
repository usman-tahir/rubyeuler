#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/06/19/nines-and-zeros/

def nine_zero_div_by(n,counter=9)
  counter += 1 until counter % n == 0 && nine_zero(counter)
  counter
end

def nine_zero(n)
  [[0],[9],[0,9]].include?(n.to_s.split(//).sort.uniq.map {|e| e.to_i})
end

p nine_zero_div_by(23)
