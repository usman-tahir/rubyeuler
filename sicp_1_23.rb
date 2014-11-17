# http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2.6

def square(x)
  x * x
end

def smallest_divisor(x)
  find_divisor(x,2)
end

def find_divisor(n,test_divisor)
  case
  when square(test_divisor) > n
    n
  when divides?(test_divisor,n)
    test_divisor
  else
    find_divisor(n,next_(test_divisor))
  end
end

def divides?(a,b)
  b % a == 0
end

def prime?(x)
  x == smallest_divisor(x)
end

def even?(x)
  x % 2 == 0
end  

def next_(x)
  case
  when x == 2
    3
  else
    x + 2
  end
end    

def timed_prime_test(n)
  start_prime_test(n,Time.now)
end

def start_prime_test(n,start_time)
  report_prime(n,Time.now-start_time) if prime?(n)
end

def report_prime(n,elapsed_time)
  puts "#{n} *** #{elapsed_time}"
end

def search_for_primes(first,last)
  def search_iter(cur,last)
    if cur <= last
      timed_prime_test(cur) 
      search_iter(cur+2,last)
    end
  end
  if even?(first)
    search_iter(first+1,last)
  elsif even?(last)
    search_iter(first,last-1)
  end
end

p search_for_primes(1000,1050)
p search_for_primes(10_000,10_050)
p search_for_primes(100_000,100_050)
p search_for_primes(1_000_000,1_000_050)
