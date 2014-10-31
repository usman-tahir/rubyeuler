# http://rosettacode.org/wiki/Pythagorean_triples

def find_pythagorean_triples(max_perimeter)
  triples =[]
  primitives =[]
  limit = max_perimeter/2
  (1..limit).each do |c|
    (1..c).each do |b|
      (1..b).each do |a|
        if (a ** 2) + (b ** 2) == (c ** 2)
          if (a + b + c) < max_perimeter
            triples << [a,b,c]
            # clunky way to find coprimes
            if a.gcd(b) == a.gcd(c) && a.gcd(b) == b.gcd(c) && a.gcd(b) == 1 
              primitives << [a,b,c]
            end  
          end
        end
      end
    end
  end
  "Up to #{max_perimeter} : #{triples.count} Triples, #{primitives.count} Primitives"        
end

p find_pythagorean_triples(100)