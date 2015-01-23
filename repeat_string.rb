# http://rosettacode.org/wiki/Repeat_a_string

def repeat(string,number_of_times)
  result = ""
  number_of_times.times do
    result << string
  end
  result
end

p repeat("ha",5)
