# http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2

def fast_multi(x,y)
  multi_iter(x,y,0)
end

def multi_iter(x,y,counter)
  if y == 0
    counter
  elsif y.even?
    multi_iter((x+x),(y/2),(counter))
  else
    multi_iter(x,(y-1),(counter+x))
  end
end

p fast_multi(5,5)
p fast_multi(7,9)    