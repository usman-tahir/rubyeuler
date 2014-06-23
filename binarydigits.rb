# http://rosettacode.org/wiki/Binary_digits
start_time = Time.now
test_array = [5,50,9000]

def base_ten_to_binary(number)
  return number.to_s(2)
end

test_array.each do |number|
  puts base_ten_to_binary(number)
end

puts ((Time.now-start_time).to_f).to_s + "s"

