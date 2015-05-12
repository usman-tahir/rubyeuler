#!/usr/bin/env ruby
# https://projecteuler.net/problem=71
# http://en.wikipedia.org/wiki/Mediant_%28mathematics%29

def reduced_proper_fractions(limit)
  a,c,b,d = 2,5,3,7
  (a += b; c += d) until (c + d > limit)
  return a
end

p reduced_proper_fractions(1_000_000)
