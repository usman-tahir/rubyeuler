# http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html
# newton's method for finding square roots

def square(x)
  x * x
end

def sqrt(x)
  sqrt_iter(1.0,x)
end

def sqrt_iter(guess,x)
  good_enough(guess,x) ? guess : sqrt_iter(improve_guess(guess,x),x)
end

def improve_guess(guess,x)
  average(guess,x/guess)
end

def average(x,y)
  (x+y)/2
end

def good_enough(guess,x)
  (square(guess) - x).abs < 0.001
end

p sqrt(9)
p sqrt(100+37)
p sqrt(sqrt(2) + sqrt(3))
p square(sqrt(1000))
