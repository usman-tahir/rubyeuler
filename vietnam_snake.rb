#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/05/26/vietnam-snake/

def vietnam_snake(l)
  l[0] + ((13 * l[1].to_f) / l[2]) + (l[3]) + (12 * l[4]) - l[5] - 11 + ((l[6] * l[7]) / l[8].to_f) - 10 == 66.0
end

p (1..9).to_a.permutation.to_a.map { |p| vietnam_snake(p) ? 1 : 0 }.inject(:+)
