#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/06/09/leonardo-numbers/

def leonardo_numbers(n)
  n == 0 ? 1 : n == 1 ? 1 : (leonardo_numbers(n-2) + leonardo_numbers(n-1) + 1)
end

(1..50).each {|n| p leonardo_numbers(n)}
