# http://projecteuler.net/problem=92
load 'eulermethods.rb'

def square_digits(number)
  square_vals =[]
  number.to_a.each do |digit|
    square_vals << digit ** 2
  end
  square_vals.sum
end

def find_square_digit_chain(number)
  chain_array =[number]
  temp_value = number
  until chain_array[-1] == 89 ||
        chain_array[-1] == 85 || 
        chain_array[-1] == 145 ||
        chain_array[-1] == 42 ||
        chain_array[-1] == 20 ||
        chain_array[-1] == 4 ||
        chain_array[-1] == 16 ||
        chain_array[-1] == 37 ||
        chain_array[-1] == 58 ||
        chain_array[-1] == 44 ||    
        chain_array[-1] == 1  ||
        chain_array[-1] == 32 ||
        chain_array[-1] == 13 ||
        chain_array[-1] == 10 
    chain_array << square_digits(temp_value)
    temp_value = square_digits(temp_value)
  end
  return 89 if chain_array[-1] == 89 ||
               chain_array[-1] == 85 || 
               chain_array[-1] == 145 ||
               chain_array[-1] == 42 ||
               chain_array[-1] == 20 ||
               chain_array[-1] == 4 ||
               chain_array[-1] == 16 ||
               chain_array[-1] == 37 ||
               chain_array[-1] == 58
  return 1 if chain_array[-1] == 44 ||    
              chain_array[-1] == 1  ||
              chain_array[-1] == 32 ||
              chain_array[-1] == 13 ||
              chain_array[-1] == 10 
end

def find_eighty_nines_below_ten_million
  eighty_nines =[]
  (1..9_999_999).each do |number_to_test|
    puts number_to_test if find_square_digit_chain(number_to_test) == 89
    eighty_nines << number_to_test if find_square_digit_chain(number_to_test) == 89
    next if find_square_digit_chain(number_to_test) == 1
  end
  eighty_nines
end

puts find_eighty_nines_below_ten_million.count    

