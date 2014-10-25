# http://rosettacode.org/wiki/Iterated_digits_squaring

def square_digit_sum(number)
  number.to_s.split(//).map {|digit| digit.to_i ** 2}.inject(:+)
end  

def eightynine_or_one(number)
  result_array =[number]
  until result_array[-1] == 89 || result_array[-1] == 1
    result_array << square_digit_sum(result_array[-1])
  end
  result_array[-1]
end

def eighty_nines_below_one_million
  ones = []
  (1..1_000_000).each do |number|
    ones << number if eightynine_or_one(number) == 1
    # puts number if eightynine_or_one(number) == 1
  end
  eighty_nines = (1..1_000_000).to_a.count - ones.count
end

puts eighty_nines_below_one_million