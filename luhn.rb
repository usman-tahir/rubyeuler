# http://rosettacode.org/wiki/Luhn_test_of_credit_card_numbers
start_time = Time.now
numbers_to_validate = [49927398716,49927398717,1234567812345678,1234567812345670]

def luhn_checksum(number)
  number_array = number.to_s.reverse.split(//).map {|digit| digit.to_i}
  partial_sum_s1 = 0
  partial_sum_s2 = 0
  number_array.each_index do |index|
    partial_sum_s1 += number_array[index] if index % 2 == 0
    if index % 2 != 0
      case
      when (number_array[index]*2) < 10
      partial_sum_s2 += (number_array[index]*2)
      when (number_array[index]*2) >= 10
      digit_sum = (number_array[index]*2).to_s.split(//).map {|digit| digit.to_i}
      partial_sum_s2 += digit_sum.inject(:+)
      end	
    end
  end
  return true if (partial_sum_s1 + partial_sum_s2) % 10 == 0
  return false if (partial_sum_s1 + partial_sum_s2) % 10 != 0  
end	

numbers_to_validate.each do |number|
puts "#{number}: true." if luhn_checksum(number) == true
puts "#{number}: false." if luhn_checksum(number) == false
end
puts ((Time.now-start_time).to_f).to_s + "s"  
