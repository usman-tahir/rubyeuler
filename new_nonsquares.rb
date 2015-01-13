# http://rosettacode.org/wiki/Sequence_of_non-squares

def non_squares(number)
  (number + ((0.5) + Math.sqrt(number))).floor
end

(1..22).each {|number| puts "#{number}: #{non_squares(number)}" }

(23..1_000_000).each do |number|
  puts "#{number} is a perfect square." if Math.sqrt(non_squares(number)) % 1 == 0
end

puts "No perfect squares for nth <= 1_000_000."
