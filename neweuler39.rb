# http://projecteuler.net/problem=39

perimeters =[]
(1..500).each do |x|
  ((x+1)..500).each do |y|
    ((y+1)..500).each do |z|
      # puts x.to_s + "," + y.to_s + "," + z.to_s if (x**2) + (y**2) == (z**2)
      perimeters.push (x+y+z) if (x**2) + (y**2) == (z**2) && (x+y+z) < 1000
      break if x+y+z >= 1000
    end
  end
end   

def mode(array)
  array.max_by { |element| array.count(element) }
end    

puts mode(perimeters)