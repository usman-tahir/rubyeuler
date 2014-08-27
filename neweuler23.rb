# http://projecteuler.net/problem=23
start = Time.now

class Fixnum
  def find_divisors
    divisors = []
    1.upto(self-1).each do |number|
      divisors << number if self % number == 0
    end
    divisors
  end

  def abundant?
    self < self.find_divisors.sum
  end

  def perfect?
    self == self.find_divisors.sum
  end
  
  def deficient?
    self > self.find_divisors.sum
  end          
end

class Array
  def sum
    self.inject(:+)
  end
end  

def find_abun_numbers_upto(number)
  abun_numbers = []
  (12..number).each do |num|
    abun_numbers << num if num.abundant?
  end
  abun_numbers
end

abundant_numbers = find_abun_numbers_upto(28123)
writeable_as_abundant_numbers =[]
index_limit_counter = abundant_numbers.count 
outer_counter = 0
until outer_counter == index_limit_counter
  inner_counter = outer_counter
  until inner_counter == index_limit_counter
    break if abundant_numbers[outer_counter] + abundant_numbers[inner_counter] > 28123
    writeable_as_abundant_numbers << abundant_numbers[outer_counter] + abundant_numbers[inner_counter]
    inner_counter += 1
  end
  outer_counter += 1  
end

writeable_as_abundant_numbers.uniq!
not_writeable_as_abundant = []
(1..28123).each do |number|
  not_writeable_as_abundant << number unless writeable_as_abundant_numbers.include?(number)
end  

puts not_writeable_as_abundant.sum  
puts Time.now - start