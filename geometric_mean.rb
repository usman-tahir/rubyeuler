# http://rosettacode.org/wiki/Averages/Pythagorean_means

def geometric_mean(low,high)
  find_nth_root((low..high).to_a.inject(:*),(low..high).count)
end

def find_nth_root(val,nth)
  val ** (1.0 / nth)
end

p geometric_mean(1,10)
