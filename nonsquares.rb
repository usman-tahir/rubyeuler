# http://rosettacode.org/wiki/Sequence_of_non-squares
# Print out the values for n in the range 1 to 22
# Show that no squares occur for n less than one million 
start_time = Time.now

def function_of_non_squares(number)
  (number + ((0.5) + Math.sqrt(number))).floor
end  	

def show_sequence_range(start_number, end_number)
  sequence_array =[]
  (start_number..end_number).each do |number|
    sequence_array << function_of_non_squares(number)
  end
  sequence_array
end

def test_up_to_one_million
  test_flag = false
  (1..1_000_000).each do |number|
    test_flag = true if Math.sqrt(function_of_non_squares(number)) % 1 == 0
  end
  test_flag # returns false if no n < 1_000_000 is a square root for f(n)
end		

puts show_sequence_range(1, 22).inspect  	
puts test_up_to_one_million
puts ((Time.now - start_time).to_f).to_s + "s"
