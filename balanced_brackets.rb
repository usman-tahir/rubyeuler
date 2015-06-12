#!usr/bin/env ruby
# http://rosettacode.org/wiki/Balanced_brackets

def balanced_brackets(s)
  l = 0; r = 0
  (0...s.length).each { |i| l += 1 if s[i] == "["; r += 1 if s[i] == "]"; return false if r > l }
  l == r
end

zero = "[" # false
one = "[]" # true
two = "][" # false
three = "[][]" # true
four = "][][" # false
five = "[[][]]" # true
six = "[]][[]" # false

[zero,one,two,three,four,five,six].each { |i| p balanced_brackets(i) }

