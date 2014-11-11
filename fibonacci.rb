# http://rosettacode.org/wiki/Fibonacci_sequence

def fibonacci(n)
  if n == 0
    0
  elsif n == 1
    1
  else
   fibonacci(n-1) + fibonacci(n-2)
  end
end

p fibonacci(ARGV[0].to_i)
