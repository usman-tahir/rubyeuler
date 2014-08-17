# http://projecteuler.net/problem=14

def next_for_even(number)
  number/2
end

def next_for_odd(number)
  (3 * number) + 1  
end

def collatz_sequence(number)
  temp_number = number
  counter = 1
  until temp_number == 1
    if temp_number.even?
      temp_number = next_for_even(temp_number)
      counter += 1
    elsif temp_number.odd?
      temp_number = next_for_odd(temp_number)
      counter += 1
    end
  end      
  counter
end  

def find_longest_collatz_sequence_below_one_million
  number_with_longest_chain = 13
  (1..1_000_000).each do |number|
    #puts number
    if collatz_sequence(number) > collatz_sequence(number_with_longest_chain)
      number_with_longest_chain = number
    end
  end
  number_with_longest_chain
end  

puts find_longest_collatz_sequence_below_one_million