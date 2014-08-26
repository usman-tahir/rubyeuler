# http://projecteuler.net/problem=9

def find_special_pythagorean_triplet
  (1..500).each do |x|
    (1..500).each do |y|
      (1..500).each do |z|
        if (x**2) + (y**2) == (z**2) && x + y + z == 1000
          return x * y * z
        end
      end
    end      
  end
end

puts find_special_pythagorean_triplet        
