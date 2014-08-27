# http://projecteuler.net/problem=15

class Fixnum
  def factorial
    factorial_value = 1
    self.downto(1) { |multiplier| factorial_value *= multiplier }
    factorial_value
  end
end

def find_lattice_routes(n)
  # 2n choose n combinations
  (2 * n).factorial / n.factorial ** 2
end

puts find_lattice_routes(20)
  