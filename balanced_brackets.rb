#!usr/bin/env ruby
# http://rosettacode.org/wiki/Balanced_brackets

def balanced(s,index=0,balance=0)
  if balance < 0
    return false
  elsif index == s.length
    return balance == 0
  elsif s[index] == "["
    balanced(s,index+1,balance+1)
  elsif s[index] == "]"
    balanced(s,index+1,balance-1)
  else
    balances(s,index+1,balance)
  end
end


zero = "[" # false
one = "[]" # true
two = "][" # false
three = "[][]" # true
four = "][][" # false
five = "[[][]]" # true
six = "[]][[]" # false

[zero,one,two,three,four,five,six].each { |i| p balanced(i) }

