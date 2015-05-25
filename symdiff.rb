#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Symmetric_difference

def sym_difference(one,two)
  [one - two, two - one].sort
end

a = ["John", "Bob", "Mary", "Serena"]
b = ["Jim", "Mary", "John", "Bob"]

p sym_difference(a, b)
