# http://programmingpraxis.com/2015/03/24/excellent-numbers/

def find_excellent
  n = 100_000
  f = -> a { a * (a + n) }
  g = -> b { b * (b - 1) }
  a = n/10; b = 1; accumulator = 0
  ( f[a] < g[b] ? a += 1 : f[a] > g[b] ? b += 1 : (accumulator += a * n + b; a += 1; b += 1) ) while (a < n) && (b < n)
  accumulator
end

p find_excellent
