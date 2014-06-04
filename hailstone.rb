# http://rosettacode.org/wiki/Hailstone_sequence

# If n is 1 then the sequence ends.
# If n is even then the next n of the sequence = n/2
# If n is odd then the next n of the sequence = (3 * n) + 1 

# Create a routine to generate the hailstone sequence for a number.

# Use the routine to show that the hailstone sequence for the number 27 has 112 
# elements starting with 27, 82, 41, 124 and ending with 8, 4, 2, 1

# Show the number less than 100,000 which has the longest hailstone sequence 
# together with that sequence's length.
# (But don't show the actual sequence!) 

start_time = Time.now

twenty_seven = 27
twenty_seven_hailstone_sequence_elements =[]
until twenty_seven == 1
  if twenty_seven.even?
    twenty_seven_hailstone_sequence_elements << twenty_seven
    twenty_seven = twenty_seven/2
  else twenty_seven.odd?
    twenty_seven_hailstone_sequence_elements << twenty_seven
    twenty_seven = ((3 * twenty_seven) + 1)
  end
  twenty_seven_hailstone_sequence_elements << 1 if twenty_seven == 1
end

puts "27 has a hailstone sequence that's " + twenty_seven_hailstone_sequence_elements.count.to_s + " elements long."
puts "The first and last four numbers in 27's hailstone sequence are:"
puts twenty_seven_hailstone_sequence_elements[0..3].inspect + " && " + twenty_seven_hailstone_sequence_elements[-4..-1].inspect

number_with_longest_sequence = 0
longest_sequence_count = 0
(1..100_000).each do |number|
  test_number = number
  number_sequence_count = 0
  until test_number == 1
    if test_number.even?
      test_number = test_number/2
    else test_number.odd?
      test_number = ((3 * test_number) + 1)	
    end
    number_sequence_count += 1
  end
  if number_sequence_count > longest_sequence_count
    longest_sequence_count = number_sequence_count
    number_with_longest_sequence = number
  end
end

puts number_with_longest_sequence.to_s + " has a sequence that's " + longest_sequence_count.to_s + " steps long."
puts ((Time.now - start_time).to_f).to_s + "s"