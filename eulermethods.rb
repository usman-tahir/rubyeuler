class Numeric
  def length
    self.to_s.length
  end  

  def to_a
    self.to_s.split(//).map { |digit| digit.to_i }
  end  

end

class Fixnum
  def factorial
    factorial = 1
    self.downto(1) {|number| factorial *= number }
    factorial
  end 

  def divisors
    dvsrs = []
    1.upto(self-1).each do |number|
      dvsrs << number if self % number == 0
    end
    dvsrs
  end   

  def abundant?
    self < self.divisors.sum
  end

  def perfect?
    self == self.divisors.sum
  end

  def deficient?
    self > self.divisors.sum
  end 

end

class Array
  def sum
    self.inject(:+)
  end

end  

class FiboGenerator
  
  # This generator starts with 0 as the zero-indexed term.
  # If the sequence should start with 1, keep the offset in mind.

  def initialize
    @fibo_numbers = [0,1]
  end  

  def next
    @fibo_numbers << @fibo_numbers[-1] + @fibo_numbers[-2]
    @fibo_numbers[-1]
  end  

  def generate(n)
    until @fibo_numbers.count == n
      self.next
    end
    @fibo_numbers
  end    

  def show
    @fibo_numbers
  end  

  def count
    @fibo_numbers.count
  end  

end
