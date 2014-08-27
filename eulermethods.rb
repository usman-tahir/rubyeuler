class Numeric
  def length
    self.to_s.length
  end  

  def to_a
    self.to_s.split(//).map { |digit| digit.to_i }
  end  

end

class Fixnum
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
