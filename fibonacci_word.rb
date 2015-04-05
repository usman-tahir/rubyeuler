# http://rosettacode.org/wiki/Fibonacci_word

def f_word(n,w="")
  n == 1 ? w.insert(0,"1") : n == 2 ? w.insert(0,"0") : w << (f_word(n-1) + f_word(n-2))
end

(1..10).each do |n|
  p f_word(n).to_i
end
