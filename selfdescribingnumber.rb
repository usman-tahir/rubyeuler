# http://rosettacode.org/wiki/Self-describing_numbers

# Integers with the property that, when digit positions are labeled 0 to N-1, 
# the digit in each position is equal to the number of times that that digit 
# appears in the number.

# For example 2020 is a four digit self describing number.

# Position "0" has value 2 and there is two 0 in the number. Position "1" has 
# value 0 because there are not 1's in the number. Position "2" has value 2 
# and there is two 2. And the position "3" has value 0 and there are zero 3's. 

t_test_array = [1210,2020,21200,3211000,42101000]
f_test_array = [3333,3,2021,11200,45,98]

def self_describing(n)
  digits = n.to_s.split(//).map {|d| d.to_i}
  digits.each_index {|i| return false unless digits.count(i) == digits[i]}
  return true
end

t_test_array.each {|n| puts "#{n}: #{self_describing(n)}"}
f_test_array.each {|n| puts "#{n}: #{self_describing(n)}"}
