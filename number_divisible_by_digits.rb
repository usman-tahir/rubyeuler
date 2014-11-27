# http://codegolf.stackexchange.com/questions/41902/is-a-number-divisible-by-each-of-its-digits

def divisible_by_each_digit?(number)
  number.to_s.split(//).map { |digit| digit.to_i }.each do |digit|
    return false if digit == 0 || number % digit != 0
  end
  true
end

p divisible_by_each_digit?(120)
p divisible_by_each_digit?(128)
