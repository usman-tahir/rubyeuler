# http://rosettacode.org/wiki/Happy_numbers
# http://en.wikipedia.org/wiki/Happy_number
load "eulermethods.rb"

def sum_square_digits(number)
  number.to_a.map { |digit| digit ** 2 }.inject(:+)
end

def happy?(number)
  chain_array = [number]
  temp_value = number
  until chain_array[-1] == 89 || chain_array[-1] == 1
    temp_value = sum_square_digits(temp_value)
    chain_array << temp_value
  end
  chain_array[-1] == 1
end

def find_happy_numbers(number)
  happy_numbers =[]
  counter = 1
  until happy_numbers.count == number
    happy_numbers << counter if happy?(counter)
    counter += 1  
  end
  happy_numbers
end  

p find_happy_numbers(143)
