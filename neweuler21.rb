# http://projecteuler.net/problem=21

class Fixnum
  def find_divisors
    divisors = []
    1.upto(self-1).each do |number|
      divisors << number if self % number == 0
    end
    divisors
  end    
end

class Array
  def sum
    self.inject(:+)
  end
end    

def amicable_test(first, second)
  return false if first == second
  first.find_divisors.sum == second && second.find_divisors.sum == first
end

def sum_amicable_numbers_under_ten_thousand
  amicable_numbers =[]
  (1..999).each do |first_num|
    (first_num..999).each do |second_num|
      if amicable_test(first_num, second_num)
        puts first_num.to_s + ", " + second_num.to_s
        amicable_numbers << first_num
        amicable_numbers << second_num
      end
    end
  end
  (1000..1999).each do |first_num|
    (first_num..1999).each do |second_num|
      if amicable_test(first_num, second_num)
        puts first_num.to_s + ", " + second_num.to_s
        amicable_numbers << first_num
        amicable_numbers << second_num
      end
    end
  end
  (2000..2999).each do |first_num|
    (first_num..2999).each do |second_num|
      if amicable_test(first_num, second_num)
        puts first_num.to_s + ", " + second_num.to_s
        amicable_numbers << first_num
        amicable_numbers << second_num
      end
    end
  end
  (3000..3999).each do |first_num|
    (first_num..3999).each do |second_num|
      if amicable_test(first_num, second_num)
        puts first_num.to_s + ", " + second_num.to_s
        amicable_numbers << first_num
        amicable_numbers << second_num
      end
    end
  end
  (4000..4999).each do |first_num|
    (first_num..4999).each do |second_num|
      if amicable_test(first_num, second_num)
        puts first_num.to_s + ", " + second_num.to_s
        amicable_numbers << first_num
        amicable_numbers << second_num
      end
    end
  end
  (5000..5999).each do |first_num|
    (first_num..5999).each do |second_num|
      if amicable_test(first_num, second_num)
        puts first_num.to_s + ", " + second_num.to_s
        amicable_numbers << first_num
        amicable_numbers << second_num
      end
    end
  end
  (6000..6999).each do |first_num|
    (first_num..6999).each do |second_num|
      if amicable_test(first_num, second_num)
        puts first_num.to_s + ", " + second_num.to_s
        amicable_numbers << first_num
        amicable_numbers << second_num
      end
    end
  end
  (7000..7999).each do |first_num|
    (first_num..7999).each do |second_num|
      if amicable_test(first_num, second_num)
        puts first_num.to_s + ", " + second_num.to_s
        amicable_numbers << first_num
        amicable_numbers << second_num
      end
    end
  end
  (8000..8999).each do |first_num|
    (first_num..8999).each do |second_num|
      if amicable_test(first_num, second_num)
        puts first_num.to_s + ", " + second_num.to_s
        amicable_numbers << first_num
        amicable_numbers << second_num
      end
    end
  end
  (9000..9999).each do |first_num|
    (first_num..9999).each do |second_num|
      if amicable_test(first_num, second_num)
        puts first_num.to_s + ", " + second_num.to_s
        amicable_numbers << first_num
        amicable_numbers << second_num
      end
    end
  end
  amicable_numbers.uniq.sum
end

puts sum_amicable_numbers_under_ten_thousand        