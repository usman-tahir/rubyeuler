# http://projecteuler.net/thread=32
runtime = Time.now

accumulator = []
for x in 1..5000
  for y in 1..987
    z = x * y
    if (x.to_s.scan(/./).map {|e| e.to_i} + y.to_s.scan(/./).map {|e| e.to_i} + z.to_s.scan(/./).map {|e| e.to_i}).sort == [1,2,3,4,5,6,7,8,9]
      puts x.to_s + " * " + y.to_s + " = " + z.to_s
      accumulator.push z
    else
    end
  y += 1	
  end
x += 1
end

puts accumulator.uniq!.inject(:+)

puts ((Time.now - runtime).to_f).to_s + " s"