# http://projecteuler.net/problem=49
require 'prime'

def find_prime_premutations
  possible_solution_array = []
  (1000..9999).each do |number|
    if number.prime? && (number + 3330).prime? && (number + 6660).prime? && (number + 6660) < 10_000
      temp_array = [number, (number + 3330), (number + 6660)]
      possible_solution_array << temp_array
    end
  end
  actual_solution_array = Array.new
  possible_solution_array.each do |solution_candidates|
    next if solution_candidates[0] == 1487
    first = solution_candidates[0].to_s.split(//).map.to_a.sort
    second = solution_candidates[1].to_s.split(//).map.to_a.sort
    third = solution_candidates[2].to_s.split(//).map.to_a.sort
    if first == second && first == third
      actual_solution_array = solution_candidates
      break
    end   
  end
  solution_string = String.new
  actual_solution_array.each do |number|
    solution_string << number.to_s
  end
  solution_string.to_i  
end

puts find_prime_premutations