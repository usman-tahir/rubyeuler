# http://projecteuler.net/problem=30

def digit_fifth_power(digit)
  digit ** 5
end

def fifth_digit_power_values(number)
  test_array = number.to_s.split(//).to_a
  test_array.each_index do |index|
    test_array[index] = digit_fifth_power(test_array[index].to_i)
  end
  test_array.inject(:+)
end

def find_fifth_digit_powers
  fifth_digit_power_numbers_array =[]
  # ballparking the upper limit since (n ** 5) * 6 grows large fast
  (2..400_000).each do |number|
    if number == fifth_digit_power_values(number)
      fifth_digit_power_numbers_array << number
    end
  end
  fifth_digit_power_numbers_array    
end      

puts find_fifth_digit_powers.inject(:+)
