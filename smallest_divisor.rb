# find smallest divisor of an integer
# adapted from SICP section 1.2

def square(n)
  n * n
end  

def smallest_divisor(n)
  find_divisor(n,2)
end

def find_divisor(n,test_divisor)
  case
  when square(test_divisor) > n
    n
  when divides(test_divisor,n)
    test_divisor
  else
    find_divisor(n,(test_divisor+1))
  end
end

def divides(a,b)
  b % a == 0
end

def prime(n)
  smallest_divisor(n) == n
end

(1..50).each do |number|
  puts "#{number} is prime: #{prime(number)}"
end  