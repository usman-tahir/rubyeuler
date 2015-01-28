# http://rosettacode.org/wiki/Averages/Pythagorean_means

def geometric_mean(low,high)
  (low..high).to_a.inject(:*) ** (1.0 / (low..high).count)
end

p geometric_mean(1,10)
