#!/usr/bin/env ruby
# http://programmingpraxis.com/2016/01/01/happy-new-year-2/

def nth_triangular_number(n)
  return (n * (n + 1)) / 2
end

p nth_triangular_number(63)
