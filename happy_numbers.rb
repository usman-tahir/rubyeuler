# http://rosettacode.org/wiki/Happy_numbers

def happy?(number)
  while (number != 1) && (number != 89)
    number = sum_square_digits(number)
  end
  number == 1
end

def sum_square_digits(number,accumulator=0)
  number < 10 ? accumulator + (number ** 2) : ((number % 10) ** 2) + sum_square_digits(number/10,accumulator)
end

def find_happy_numbers(number,array=[],counter=1)
  until array.count == number
    array << counter if happy?(counter) 
    counter += 1
  end
  array
end  

p find_happy_numbers(8)
