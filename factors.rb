# find factors of an int

def factors(n)
  fctrs = []
  (1...n).each do |factor|
    fctrs << factor if n % factor == 0
  end
  fctrs
end

p factors(120)

