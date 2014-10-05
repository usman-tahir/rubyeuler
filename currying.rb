# http://rosettacode.org/wiki/Currying

multiply_three_numbers = lambda { |a,b,c| [a,b,c].inject(:*) }
multiply_two_numbers_by_10 = multiply_three_numbers.curry[10]
multiply_one_number_by_33 = multiply_two_numbers_by_10[23]

p multiply_three_numbers[1,2,3]
p multiply_two_numbers_by_10[1,2]
p multiply_one_number_by_33[1]