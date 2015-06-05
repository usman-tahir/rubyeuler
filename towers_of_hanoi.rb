#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Towers_of_Hanoi

def m(n,f,t,v)
  return if n <= 0
  m(n-1,f,v,t) 
  p "Move from #{f} to #{t}"
  m(n-1,v,t,f)
end

m(4,1,2,3)    
