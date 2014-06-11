# http://rosettacode.org/wiki/Harshad_or_Niven_series
start_time = Time.now

harshad_numbers = [1]
counter = 2
until harshad_numbers[-1] > 1000
  divisor = counter.to_s.scan(/./).map { |digit| digit.to_i }
  harshad_numbers << counter if counter % (divisor.inject(:+)) == 0
  counter += 1
end  

puts harshad_numbers[0..19].inspect
puts harshad_numbers[-1]

puts ((Time.now - start_time).to_f).to_s + "s"