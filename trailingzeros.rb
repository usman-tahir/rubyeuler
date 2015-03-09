# http://programmingpraxis.com/2014/05/13/three-interview-questions-2/
# problem 3: output the number of trailing zeroes in the factorial of a number

def factorial(n)
  (1..n).inject(:*)
end

def trailing_zeros(n,counter=0)
  n % 10 != 0 ? counter : trailing_zeros(n/10,counter+1)
end

puts trailing_zeros(factorial(5))
