# http://projecteuler.net/problem=112
bouncy_number_attempt = 1587000
# this is an idiotic way to do this but I manually tried different numbers
# for bouncy_number_attempt to narrow the possibilities until line 26 == 0.99

def bouncy_test(number)
  stringified_number = number.to_s
  bouncy =[]
  stringifield_length = stringified_number.length - 2 # keep from reaching nil values
  (0..stringifield_length).each do |index|
    bouncy.push "true" if stringified_number[index].to_i < stringified_number[index+1].to_i
    bouncy.push "false" if stringified_number[index].to_i > stringified_number[index+1].to_i
  end
  bouncy.count("true") != 0 && bouncy.count("false") !=0 ? true : false
end

def count_bouncy_numbers(ceiling)
  bouncy_numbers =[]
  (100..ceiling).each do |number|
    bouncy_numbers.push number if bouncy_test(number) == true
  end
  return bouncy_numbers.count
end

puts bouncy_number_attempt
puts count_bouncy_numbers(bouncy_number_attempt).to_f/bouncy_number_attempt.to_f