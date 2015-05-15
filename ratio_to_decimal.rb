#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/05/15/convert-ratio-to-decimal/

def ratio_to_decimal(numerator,denominator,digits)
  val = numerator.divmod(denominator)
  int_part = val[0]; remainder = val[1]
  decimal_part = []
  until remainder == 0 || decimal_part.count == digits
    remainder = (remainder.to_s + "0").to_i
    val = remainder.divmod(denominator)
    decimal_part << val[0]
    remainder = val[1]
  end
  "#{int_part}.#{decimal_part.map {|e| e.to_s}.join}"
end

puts ratio_to_decimal(3227,557,30)
