# http://rosettacode.org/wiki/Averages/Pythagorean_means
# Compute all three of the Pythagorean means of the set of integers 1 through 10. 
# - arithmetic mean
# - geometric mean
# - harmonic mean
low = 1
high = 10

def arithmetic_mean(range_bottom,range_top)
  arithmetic_mean_array = (range_bottom..range_top).to_a
  denominator = arithmetic_mean_array.count
  arithmetic_mean_array.inject(:+).to_f/denominator.to_f
end

def geometric_mean(range_bottom,range_top)
  geometric_mean_array = (range_bottom..range_top).to_a
  nth_root_power = geometric_mean_array.count
  geometric_mean_array.inject(:*) ** (1.to_f/nth_root_power)
end  

def harmonic_mean(range_bottom,range_top)
  harmonic_array = (range_bottom..range_top).to_a
  numerator = harmonic_array.count
  harmonic_array.each_index do |index|
    harmonic_array[index] = (1.to_r/harmonic_array[index].to_r)
  end
  (numerator/harmonic_array.inject(:+)).to_f
end    

puts "The arithmetic mean of range #{low}..#{high} is: " + arithmetic_mean(low,high).to_s
puts "The geometric mean of range #{low}..#{high} is: " + geometric_mean(low,high).to_s
puts "The hamonic mean of range #{low}..#{high} is: " + harmonic_mean(low,high).to_s  