# http://rosettacode.org/wiki/Integer_sequence

def display_int_seq_to(number)
  counter = 1
  until counter == number.to_i
    counter += 1
    puts counter
  end
end

display_int_seq_to("infinity")