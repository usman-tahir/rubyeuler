# https://projecteuler.net/problem=99

def large_exponent_val(array)
  array[1].to_i * Math.log(array[0].to_i)
end  

def find_largest_row
  rows = []
  base_exp = File.new("p099_base_exp.txt")
  base_exp.each do |line|
    test_array = line.split(/,/)
    rows << large_exponent_val(test_array) 
  end
  rows.index(rows.max) + 1 # 0 indexed
end

puts find_largest_row
