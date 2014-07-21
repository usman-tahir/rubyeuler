# http://rosettacode.org/wiki/Even_or_odd
# Use the even and odd predicates, if the language provides them. 
#
# Check the least significant digit. With binary integers, i bitwise-and 
# 1 equals 0 iff i is even, or equals 1 iff i is odd. 
#
# Divide i by 2. The remainder equals 0 iff i is even. The remainder 
# equals +1 or -1 iff i is odd. 
# 
# Use modular congruences
start_time = Time.now
a = [13,45,10060,111333447]

def even_odd_predicates(number)
  return "#{number} is even" if number.even?
  return "#{number} is odd" if number.odd? 
end

def e_o_last_digit(number)
  return "#{number} is even" if number.to_s[-1].to_i % 2 == 0
  return "#{number} is odd" if number.to_s[-1].to_i % 2 != 0
end	

def div_by_two(number)
  return "#{number} is even" if number % 2 == 0
  return "#{number} is odd" if number % 2 != 0
end

puts even_odd_predicates(a[2])  
puts e_o_last_digit(a[2])
puts div_by_two(a[2])

puts ((Time.now-start_time).to_f).to_s + "s"
