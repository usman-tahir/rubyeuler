# http://projecteuler.net/problem=52

def same_digits?(first_number,second_number)
  first_number.to_s.split(//).to_a.sort == second_number.to_s.split(//).to_a.sort
end

def test_one_through_six_x(number)
  same_digits?(number,(2 * number)) && 
  same_digits?(number,(3 * number)) &&
  same_digits?(number,(4 * number)) &&
  same_digits?(number,(5 * number)) &&
  same_digits?(number,(6 * number))
end

def find_permuted_multiples
  number_found_flag = false
  counter = 1
  until number_found_flag == true
    number_found_flag = true if test_one_through_six_x(counter)
    counter += 1 if test_one_through_six_x(counter) == false
  end
  counter
end    

puts find_permuted_multiples

