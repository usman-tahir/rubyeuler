# http://projecteuler.net/problem=12
# used a factorization algorithm from here: 
# http://rosettacode.org/wiki/Factors_of_an_integer#Ruby

runtime = Time.now

def find_factors(num)
  1.upto(Math.sqrt(num)).select {|i| (num % i).zero?}.inject([]) do |f, i|
    f << i
    f << num/i unless i == num/i
    f
  end.sort
end   

def generate_triangle(num)
  triangle = (num * (num + 1) )/ 2
  return triangle
end 

x = 1
while find_factors(generate_triangle(x)).count < 500
  puts generate_triangle(x).to_s + ": " + find_factors(x).count.to_s + " factors for " + x.to_s + " triangle number"
  x += 1
end

puts find_factors(generate_triangle(x)).count.to_s + " factors for " + generate_triangle(x).to_s + ", the " + x.to_s + " triangle number!"

puts ((Time.now - runtime).to_f).to_s + " s"