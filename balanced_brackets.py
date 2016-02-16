#!/usr/bin/env python
# http://rosettacode.org/wiki/Balanced_brackets

def balanced(s):
  def _bal_brackets(s,index,balance):
    if balance < 0:
      return False
    elif index == len(s):
      return balance == 0
    elif s[index] == "[":
      return _bal_brackets(s,index+1,balance+1)
    elif s[index] == "]":
      return _bal_brackets(s,index+1,balance-1)
    else:
      return _bal_brackets(s,index+1,balance)
  return _bal_brackets(s,0,0)

zero = "[" # false
one = "[]" # true
two = "][" # false
three = "[][]" # true
four = "][][" # false
five = "[[][]]" # true
six = "[]][[]" # false

for e in [zero,one,two,three,four,five,six]:
  print balanced(e)