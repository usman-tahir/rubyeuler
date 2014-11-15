# http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2
# fermat test adapted from sicp

def even(n)
  n % 2 == 0
end  

def square(n)
  n * n
end  

def expmod(base,exp,m)
  case
  when exp == 0
    1
  when even(exp)
    square(expmod(base,(exp/2),m)) % m
  else
    (base * (expmod(base,(exp-1),m))) % m
  end  
end

def fermat_test(n)
  def try_it(a,n)
    expmod(a,n,n) == a
  end
  try_it((rand(n-1) + 1),n)
end

def fast_prime?(n,times)
  case 
  when times == 0
    true
  when fermat_test(n)
    fast_prime?(n,times-1)
  else
    false
  end     
end

p fast_prime?(15_485_863,1000)
