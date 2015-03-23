# http://rosettacode.org/wiki/Catalan_numbers/Pascal's_triangle

def catalan_numbers(n)
  # translation of http://rosettacode.org/wiki/Catalan_numbers/Pascal%27s_triangle#Perl
  t = [0,1]
  (1..n).each do |i|
    i.downto(1).each { |j| t[j] += t[j-1] }; t[i+1] = t[i]
    (i+1).downto(1).each { |j| t[j] += t[j-1] }; puts "#{t[i+1] - t[i]}"
  end
end

catalan_numbers(15)
