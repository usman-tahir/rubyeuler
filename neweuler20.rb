# https://projecteuler.net/problem=20

def number_to_array(number)
  number.to_s.split(//).map { |n| n.to_i }
end

def sum_array(array)
  array.inject(:+)
end  

def factorial(number)
  if number == 0
    1
  else
    number * (factorial(number.pred))
  end
end

p sum_array(number_to_array(factorial(100)))
