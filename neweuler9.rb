# http://projecteuler.net/problem=9

def find_special_pythagorean_triplet
  (1..500).each {|x| (1..500).each {|y| (1..500).each {|z| return x * y * z if pyth_trip(x,y,z)}}}
end

def pyth_trip(x,y,z,n=1000)
  (x**2) + (y**2) == (z**2) && x + y + z == n
end

puts find_special_pythagorean_triplet        
