# http://rosettacode.org/wiki/Sum_digits_of_an_integer

def sum_int_digits(number,base)
  number.to_s(base).split(//).map {|digit| digit.to_i(base)}.inject(:+)
end

p sum_int_digits(1,10)
p sum_int_digits(1234,10)
p sum_int_digits(0xfe,16)
p sum_int_digits(0xf0e,16)  