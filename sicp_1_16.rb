# fast-exponentiation in ruby
# sicp problem 1.16

#(define (fast-expt b n)
#  (cond ((= n 0) 1)
#        ((even? n) (square (fast-expt b (/ n 2))))
#        (else (* b (fast-expt b (- n 1))))))

def square(x)
  x * x
end  

def even(x)
  x % 2 == 0
end  

def fast_expt(b,n)
  fast_expt_iter(b,n,1)
end  

def fast_expt_iter(b,counter,product)
  case
  when counter == 0
    product
  when even(counter)
    fast_expt_iter(square(b),(counter/2),product)
  else
    fast_expt_iter(b,(counter-1),(b*product))
  end        
end

p fast_expt(3,2) 
p fast_expt(3,3)


    