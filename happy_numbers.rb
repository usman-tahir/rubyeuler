# http://rosettacode.org/wiki/Happy_numbers
load "eulermethods.rb"

def square_digits(number)
  square_vals =[]
  number.to_a.each do |digit|
    square_vals << digit ** 2
  end
  square_vals.sum
end

def happy_or_unhappy?(number)
  chain_array = [number]
  temp_value = number
  until chain_array[-1] == 89 ||
        chain_array[-1] == 1
    chain_array << square_digits(temp_value)
    temp_value = square_digits(temp_value)
  end
  return "unhappy" if chain_array[-1] == 89
  return "happy" if chain_array[-1] == 1
end

def find_happy_numbers(number)
  happy_numbers_array =[]
  counter = 1
  until happy_numbers_array.count == number
    if happy_or_unhappy?(counter) == "happy"
      happy_numbers_array << counter
    end
    counter += 1  
  end
  happy_numbers_array  
end  

p find_happy_numbers(8)