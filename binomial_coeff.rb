# http://rosettacode.org/wiki/Evaluate_binomial_coefficients

class Fixnum
  
  def factorial
    (1..self).to_a.inject(:*)
  end

end

def binomial_coefficient(n,k)
  n.factorial / ((n - k).factorial * k.factorial)
end

p 5.factorial

p binomial_coefficient(5,3)
