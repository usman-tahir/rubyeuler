def factors(n)
  n_factors =[]
  (1..Math.sqrt(n)).select { |factor| n % factor == 0 }.each do |value|
    n_factors << n/value
    n_factors << value
  end
  n_factors.uniq.sort
end

p factors(20)
p factors(39)
