# http://rosettacode.org/wiki/Heronian_triangles

def gcd_one(a,b,c)
  gcd(gcd(a,b),c) == 1
end

def hero(a,b,c)
  s = (a + b + c) / 2
  a2 = s * (s - a) * (s - b) * (s - c)
  if a2 > 0
    Math.sqrt(a2)
  else
    0
  end
end

def is_heronian(a,b,c)
  a = hero(a,b,c)
  a > 0 && a % 1 == 0
end

def find_heronians(limit)
  heronians = []
  (3..limit).each do |a|
    (4..limit).each do |b|
      (5..limit).each do |c|
        next if a + b + c > 200
        if is_heronian(a,b,c)
          heronians << [a,b,c]
        end
      end
    end
  end
  heronians
end

a = find_heronians(200)
a.each do |triangle|
  triangle.sort!
end.uniq!

p a[0..9]
