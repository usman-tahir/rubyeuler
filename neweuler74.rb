# http://projecteuler.net/problem=74
load 'eulermethods.rb'
# file includes factorial method for fixnum
# plus fixnum.to_a & array.sum

def digit_factorial_chain_for(number)
  chain_array = [number]
  temp_value = number
  until chain_array.count != chain_array.uniq.count
    accumulator = 0
    if temp_value.length == 1
      accumulator += temp_value.factorial
    else
      temp_value.to_a.each do |digit|
        accumulator += digit.factorial
      end
    end
    break if chain_array.include?(accumulator)
    chain_array << accumulator
    temp_value = accumulator
  end
  chain_array
end

def find_chains_of_sixty_below_one_million
  chains_of_sixty = 0
  (1..1_000_000).each do |number|
    puts number
    chains_of_sixty += 1 if digit_factorial_chain_for(number).count == 60
  end
  chains_of_sixty
end

puts find_chains_of_sixty_below_one_million    