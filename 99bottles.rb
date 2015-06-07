#!/usr/bin/env ruby
# http://rosettacode.org/wiki/99_Bottles_of_Beer

def bottles(n)
  return if n == 0
  a = -> (n) { n != 1 ? "s" : "" }
  puts(<<-DOC)
  #{n} bottle#{a[n]} of beer on the wall
  #{n} bottle#{a[n]} of beer
  take one down, pass it around
  #{n-1} bottle#{a[n-1]} of beer on the wall
  
  DOC
  bottles(n-1)
end

bottles(99)
