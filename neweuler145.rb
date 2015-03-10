# https://projecteuler.net/problem=145

def reversible(n)
  temp = n
  reversed = 0
  while temp > 0
    reversed = 10 * reversed + temp % 10
    temp /= 10
  end
  reversed += n
  while reversed > 0
    return 0 if (reversed % 10) % 2 == 0
    reversed /= 10
  end
  2 
end

counter = 0
(1...1_000_000_000).step(2).each do |n|
  next if n % 10 == 0
  counter += reversible(n)
end
p counter
