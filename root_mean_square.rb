# http://rosettacode.org/wiki/Averages/Root_mean_square
# http://en.wikipedia.org/wiki/Root_mean_square
# Compute the Root mean square of the numbers 1..10. 

def root_mean_square(low,high)
  numerator_array = (low..high).to_a
  numerator_array.each_index do |index|
    numerator_array[index] = numerator_array[index]**2
  end
  numerator = numerator_array.inject(:+)
  denominator = numerator_array.count
  Math.sqrt((numerator.to_r/denominator.to_r))
end

puts root_mean_square(1,10).inspect