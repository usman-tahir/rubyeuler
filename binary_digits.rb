# http://rosettacode.org/wiki/Binary_digits
# recursive solution adapted from
# http://www.sanfoundry.com/c-program-number-decimal-to-binary-recursion/

def decimal_to_binary(number)
  if number == 0
    0
  else
    number % 2 + 10 * decimal_to_binary(number/2)
  end  
end

p decimal_to_binary(115)
p 115.to_s(2).to_i
p decimal_to_binary(115) == 115.to_s(2).to_i      