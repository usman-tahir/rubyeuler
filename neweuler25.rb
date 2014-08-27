# http://projecteuler.net/problem=25

class Numeric
  def length
    self.to_s.length
  end  

end

fibo_numbers = [1,1,2,3,5]

def fibo_numbers.generate_next
  self << self[-1] + self[-2]
end

until fibo_numbers[-1].length == 1000
  fibo_numbers.generate_next
end

puts fibo_numbers.count

