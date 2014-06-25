# http://rosettacode.org/wiki/Digital_root
start_time = Time.now
test_numbers_array = [627615, 39390, 588225, 393900588225]

def find_digital_root(number)
  number_length = number.to_s.length
  additive_persistence_counter = 0
  until number_length == 1
    number = number_split(number)
    additive_persistence_counter += 1
    number_length = number.to_s.length
  end
  digital_root = [number, additive_persistence_counter]
end	

def number_split(number)
  digit_array = number.to_s.split(//).map {|digit| digit.to_i}
  digit_array.inject(:+)
end

test_numbers_array.each do |test_number|
  puts test_number.to_s + " has a digital root of " + find_digital_root(test_number)[0].to_s
  puts test_number.to_s + " has additive persistence of " + find_digital_root(test_number)[1].to_s
end

puts ((Time.now-start_time).to_f).to_s + "s"