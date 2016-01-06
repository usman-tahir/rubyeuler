#!/usr/bin/env ruby
# http://programmingpraxis.com/2016/01/05/compatible-numbers/
require 'prime'

def compatible(x,y)
  prime_factors = -> n { n.prime_division.map { |f| f[0] } }
  prime_factors[x] == prime_factors[y]
end

p compatible(10,20)
p compatible(15,75)
p compatible(43,81)
