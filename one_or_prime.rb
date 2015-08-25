#!/usr/bin/env ruby
# https://twitter.com/CompSciFact/status/635177423043215361
require 'prime'

def gcd_recursive(a,b)
  return b == 0 ? a : gcd_recursive(b,(a%b))
end

def nextG(n,a)
  g = gcd_recursive(n,a)
  n, a = n + 1, a + g
  return [g,n,a]
end

n, a = 2, 7
100.times do
  result = nextG(n,a)
  g,n,a = result[0],result[1],result[2]
  puts "(#{g} == 1 || #{g}.prime?) == #{(g == 1 || g.prime?)}"
end
