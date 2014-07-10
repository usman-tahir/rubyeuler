# http://rosettacode.org/wiki/SEDOLs
# http://en.wikipedia.org/wiki/SEDOL
# 
# The check digit for a SEDOL is chosen to make the total weighted sum of 
# all seven characters a multiple of 10. The check digit is computed using 
# a weighted sum of the first six characters. Letters have the value of 9 
# plus their alphabet position, such that B = 11 and Z = 35. While vowels 
# are never used in SEDOLs, they are not ignored when computing this 
# weighted sum (e.g. H = 17 and J = 19, even though I is not used), 
# simplifying code to compute this sum. The resulting string of numbers 
# is then multiplied by the weighting factor as follows:
# 
# First   1
# Second  3
# Third   1
# Fourth  7
# Fifth   3
# Sixth   9
# Seventh 1 (the check digit)
#
start_time = Time.now
SEDOL_array = ["710889","B0YBKJ","406566","B0YBLH","228276","B0YBKL","557910","B0YBKR","585284","B0YBKT","B00030"]

def find_check_digit(string)
  letters_array = ("a".."z").to_a
  sedol_test_array = string.split(//).map {|digit| digit}
  sedol_test_array.each_index do |index|
    if sedol_test_array[index] =~ /[[:alpha:]]/
      item = sedol_test_array[index].downcase
      sedol_test_array[index] = (letters_array.index(item) + 10)
      #puts sedol_test_array[index]
    end
    sedol_test_array[index] = sedol_test_array[index].to_i	
  end	
  sedol_test_array.each_index do |index|
    case
    when index == 0
    sedol_test_array[index] = sedol_test_array[index] * 1
    when index == 1
    sedol_test_array[index] = sedol_test_array[index] * 3
    when index == 2
    sedol_test_array[index] = sedol_test_array[index] * 1
    when index == 3      
    sedol_test_array[index] = sedol_test_array[index] * 7
    when index == 4
    sedol_test_array[index] = sedol_test_array[index] * 3
    when index == 5
    sedol_test_array[index] = sedol_test_array[index] * 9
    else
    end  
  end  
  check_digit = 10 - (sedol_test_array.inject(:+) % 10) if sedol_test_array.inject(:+) % 10 != 0
  check_digit = 0 if sedol_test_array.inject(:+) % 10 == 0
  string << check_digit.to_s
end

SEDOL_array.each do |sedol|
  puts find_check_digit(sedol)
end	

puts ((Time.now-start_time).to_f).to_s + "s"
