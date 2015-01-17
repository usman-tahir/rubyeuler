# http://rosettacode.org/wiki/Floyd%27s_triangle

def floyds(rows)
  n = 1
  (1..rows).each do |row|
    (1..row).each do
      print n >= 100 ? "#{n} " : n >= 10 ? " #{n} " : "  #{n} "
      n += 1
    end; puts
  end; puts
end

floyds(5)
floyds(14)
