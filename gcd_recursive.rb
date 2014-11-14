# http://rosettacode.org/wiki/Greatest_common_divisor
# recursive, adapted from sicp

def greatest_common_div(a,b)
  if b == 0
    a
  else
    greatest_common_div(b, (a % b))
  end
end

p greatest_common_div(36,33)
p greatest_common_div(36,16)
p greatest_common_div(8,24)    