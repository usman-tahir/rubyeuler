# http://projecteuler.net/problem=33
runtime = Time.now
fractions =[]
numerator = 10
denominator = 11

while numerator < 100
  while denominator < 100
    if denominator % 10 != 0 && (numerator.to_r/denominator.to_r) == (numerator.to_s.chop.to_r/denominator.to_s.reverse.chop.to_r)
      fractions.push (numerator.to_r/denominator.to_r) if numerator.to_s.reverse.chop.to_i == denominator.to_s.chop.to_i
    else
    end
  denominator += 1
  end
numerator += 1
denominator = numerator + 1
end   

puts fractions.inject(:*)
puts ((Time.now - runtime).to_f).to_s + " s"
