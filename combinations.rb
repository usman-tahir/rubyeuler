# http://rosettacode.org/wiki/Combinations

def comb(number_of_combinations,number_of_ints)
  (0..number_of_ints-1).to_a.combination(number_of_combinations).to_a
end

comb(3,5).each do |combination|
  puts combination.inspect
end     
