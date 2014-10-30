# http://rosettacode.org/wiki/Bitwise_operations

def bit_and(first,second)
  (first & second).to_s(2)
end  

def bit_or(first,second)
  (first | second).to_s(2)
end

def bit_xor(first,second)
  (first ^ second).to_s(2)
end  

def bit_not(first)
  (~first).to_s(2)
end  

def bit_left(first,positions)
  (first << positions).to_s(2)
end

def bit_right(first,positions)
  (first >> positions).to_s(2)
end

p bit_and(18,20)
p bit_or(18,20)
p bit_xor(18,20)
p bit_not(18)
p bit_left(18,2)
p bit_right(18,2)