#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/06/12/random-total/

def random_total(k,n)
  test = []; result = []
  (k-1).times { test << rand(n-k) }
  test.sort!
  (1...test.count).each {|i| result << (test[i] - test[i-1])}
  result << test.min - 0
  result << (n - k) - test.max
  result.sort.map {|e| e+1}
end

k = 4; n = 9
10.times { p random_total(k,n).inject(:+) == n }