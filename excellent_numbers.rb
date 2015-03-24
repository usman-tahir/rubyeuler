# http://programmingpraxis.com/2015/03/24/excellent-numbers/

def excellent?(n)
  partitions = n.to_s.scan(/.{#{n.to_s.length/2}}/).map { |e| e.to_i ** 2 }
  partitions[1] - partitions[0] == n
end

def find_excellent
  n = 100_000
  
  def f(a)
    a * (a + 100_000)
  end

  def g(b)
    b * (b - 1)
  end

  a = n/10
  b = 1
  accumulator = 0
  while (a < n) && (b < n)
    if f(a) < g(b)
      a += 1
    elsif f(a) > g(b)
      b += 1
    else
      accumulator += a * n + b
      a += 1; b += 1
    end
  end
  accumulator
end

p find_excellent
