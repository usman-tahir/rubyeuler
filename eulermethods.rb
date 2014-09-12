require 'prime'

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
    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i| 
      f << i
      f << self / i unless i == self / i
      f
    end.sort
  end

  def sum_divisors
    dvsrs = self.divisors
    dvsrs.delete_at(-1) if dvsrs.count > 1
    dvsrs.sum
  end  

  def permutations
    temp_array = self.to_a.permutation.to_a
    result_array =[]
    temp_array.each do |array|
      result_array << array.join.to_i
    end
    result_array  
  end 

  def abundant?
    self < self.sum_divisors
  end

  def perfect?
    self == self.sum_divisors
  end

  def deficient?
    self > self.sum_divisors
  end 

  def lychrel?
    test_array = []
    temp_value = self
    until test_array.count == 50 || (test_array.count > 0 && test_array[-1].palindrome?)
      temp_value = temp_value + temp_value.reverse
      test_array << temp_value
      break if temp_value.palindrome?
    end
    !test_array[-1].palindrome?
  end  

  def triangular?
    (Math.sqrt((8 * self) + 1)) % 1 == 0
  end    

  def square?
    (Math.sqrt(self)) % 1 == 0
  end  

  def pentagonal?
    ((Math.sqrt((24 * self) + 1) + 1) / 6) % 1 == 0
  end

  def hexagonal?
    ((Math.sqrt((8 * self) + 1) + 1) /  4) % 1 == 0
  end

  def pandigital?
    comparison = (1..self.length).to_a
    test = self.to_a.sort
    test == comparison
  end

  def composite?
    self.divisors.count > 2
  end 

  def rational_square_root?
    Math.sqrt(self) % 1 == 0
  end
  
  def rational_cube_root?
    Math.cbrt(self) % 1 == 0
  end    

  def next_prime
    result_number = self + 1 if self.even?
    result_number = self + 2 if self.odd?
    until result_number.prime?
      result_number += 2
      result_number += 2 if result_number % 5 == 0
    end
    result_number
  end

  def increasing?
    number_string = self.to_s
    increasing_flag = true
    (0..number_string.length-2).each do |index|
      increasing_flag = false if number_string[index].to_i > number_string[index+1].to_i
    end
    increasing_flag
  end
  
  def decreasing?  
    number_string = self.to_s
    decreasing_flag = true
    (0..number_string.length-2).each do |index|
      decreasing_flag = false if number_string[index].to_i < number_string[index+1].to_i
    end
    decreasing_flag
  end  

  def bouncy?
    !self.increasing? && !self.decreasing?
  end

  def reverse
    self.to_s.reverse.to_i
  end

  def palindrome?
    self == self.reverse
  end
  
  def sum_digits
    self.to_a.sum
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
