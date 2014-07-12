# http://rosettacode.org/wiki/Decimal_floating_point_number_to_binary
start_time = Time.now
test_float = [23.34375]
test_binary = [1011.11101]

def dec_float_to_binary(number)
  decimal_binary = String.new
  temp_array = number.to_s.split(".").map.to_a
  puts temp_array.inspect
  temp_array.each_index do |index|
    temp_array[index] = temp_array[index].to_i.to_s(2)
  end
  decimal_binary << temp_array[0]
  decimal_binary << "."
  decimal_binary << temp_array[1]
  decimal_binary.to_f
end

def binary_to_dec_float(number)
  binary_float = String.new
  temp_array = number.to_s.split(".").map.to_a
  float_array =[]
  puts temp_array.inspect
  temp_array.each_index do |index|
    bin_number_array = temp_array[index].reverse.split(//).map {|digit| digit.to_i}
    bin_number_array.each_index do |index|
      bin_number_array[index] = (bin_number_array[index] * (2**index))
    end
    float_array << bin_number_array.inject(:+).to_s
  end
  binary_float << float_array[0]
  binary_float << "."
  binary_float << float_array[1]
end

puts test_float[0].to_s + " => " +  dec_float_to_binary(test_float[0]).to_s
puts test_binary[0].to_s + " => " + binary_to_dec_float(test_binary[0]).to_s
 
puts ((Time.now-start_time).to_f).to_s + "s"
