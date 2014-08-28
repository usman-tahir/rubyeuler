# http://projecteuler.net/problem=55
load 'eulermethods.rb'

class Fixnum
  def is_lyrchrel?
    test_array = []
    temp_value = self
    until test_array.count == 50 || (test_array.count > 0 && test_array[-1].is_palindrome?)
      temp_value = temp_value + temp_value.reverse
      test_array << temp_value
      break if temp_value.is_palindrome?
    end
    test_array[-1].is_palindrome?
  end

end

def find_lychrel_numbers_below_ten_thousand
  lychrels = []
  (1..9999).each do |number_to_test|
    lychrels << number_to_test if number_to_test.is_lyrchrel?
  end
  9999 - lychrels.count
end

puts find_lychrel_numbers_below_ten_thousand
