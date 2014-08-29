require 'prime'

class Numeric
  def length
    self.to_s.length
  end  

  def to_a
    self.to_s.split(//).map { |digit| digit.to_i }
  end  

  def reverse
    self.to_s.reverse.to_i
  end
  
  def palindrome?
    self == self.reverse
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

  def lyrchrel?
    test_array = []
    temp_value = self
    until test_array.count == 50 || (test_array.count > 0 && test_array[-1].palindrome?)
      temp_value = temp_value + temp_value.reverse
      test_array << temp_value
      break if temp_value.palindrome?
    end
    !test_array[-1].palindrome?
  end  

end

class Array
  def sum
    self.inject(:+)
  end

end  

class FiboGenerator
  
  # This generator starts with 0 as the zero-indexed term by default.
  # Initialize it with FiboGenerator.new(1) to use 1 as zero-indexed term.

  attr_reader :zero_index

  def initialize(zero_index=0)
    @fibo_numbers = [0,1] if zero_index == 0
    @fibo_numbers = [1,2] if zero_index == 1
    raise "Zero index must be 0 or 1." if zero_index != 0 && zero_index != 1
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
