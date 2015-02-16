# http://en.wikipedia.org/wiki/Hamming_weight

def hamming_weight(number)
  number.to_s(2).split(//).map {|d| d.to_i }.inject(:+)
end

n = 35
p hamming_weight(n)
p n.to_s(2)