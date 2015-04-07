# http://rosettacode.org/wiki/Primes_-_allocate_descendants_to_their_ancestors
require 'prime'

def find_ancestors(n,ances=[])
  if n.prime?
    puts "#{n} is a prime factor and, as such, has no parent."
    return ances.sort
  else
    result = find_div(n).inject(:+)
    ances << result
    find_ancestors(result,ances)
  end
end

def find_div(n)
  result = []
  Prime.prime_division(n).each {|n| n[1].times do result << n[0] end}
  result
end

n = 46
var = find_ancestors(46)
puts "#{n} has #{var.count} ancestors: #{var}"
