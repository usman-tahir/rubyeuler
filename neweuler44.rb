# http://projecteuler.net/problem=44
load 'eulermethods.rb'

def gen_pentagon(nth)
  nth * ((3 * nth) - 1) / 2
end

def find_pentagonal_sum_diff
  found_flag = false
  counter = 2
  until found_flag == true
    value_of_d = 0
    k_test_number = gen_pentagon(counter)
    1.upto(counter).each do |num|
      j_test_number = gen_pentagon(num)
      if (k_test_number - j_test_number).pentagonal? && (k_test_number + j_test_number).pentagonal?
        found_flag = true
        value_of_d = k_test_number - j_test_number
      end
    end
    counter += 1 if found_flag == false
  end
  value_of_d 
end

puts find_pentagonal_sum_diff       

