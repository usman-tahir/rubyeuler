# http://rosettacode.org/wiki/Self-describing_numbers

# Integers with the property that, when digit positions are labeled 0 to N-1, 
# the digit in each position is equal to the number of times that that digit 
# appears in the number.

# For example 2020 is a four digit self describing number.

# Position "0" has value 2 and there is two 0 in the number. Position "1" has 
# value 0 because there are not 1's in the number. Position "2" has value 2 
# and there is two 2. And the position "3" has value 0 and there are zero 3's. 

start_time = Time.now
t_test_array = [1210,2020,21200,3211000,42101000]
f_test_array = [3333,3,2021,11200,45,98]

def self_describing?(number)
  number_string = number.to_s
  num_s_length = number_string.length
  number_array = number_string.split(//).map {|digit| digit.to_i}
  number_index_counter = 0
  number_test =[]
  until number_index_counter == num_s_length
    number_test << true if number_array.count(number_index_counter) == number_string[number_index_counter].to_i 
    number_test << false if number_array.count(number_index_counter) != number_string[number_index_counter].to_i 
    number_index_counter += 1
  end
  return false if number_test.include?(false)
  return true if !number_test.include?(false)
end

def self_desc_test(test_array)
  test_array.each do |number|
    puts number.to_s + " is self-describing." if self_describing?(number) == true
    puts number.to_s + " is NOT self-describing." if self_describing?(number) == false
  end
end

self_desc_test(t_test_array)
self_desc_test(f_test_array)  	
 
puts ((Time.now-start_time).to_f).to_s + "s"
