# http://rosettacode.org/wiki/Averages/Root_mean_square
# http://en.wikipedia.org/wiki/Root_mean_square
# Compute the Root mean square of the numbers 1..10. 

def root_mean_square(low,high)
  Math.sqrt((low..high).to_a.map { |element| element ** 2 }.inject(:+).to_r / (low..high).to_a.count.to_r)
end

p root_mean_square(1,10)
