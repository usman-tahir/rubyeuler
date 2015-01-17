# http://rosettacode.org/wiki/Floyd%27s_triangle

def floyds(rows)
  row = 1
  n = 1
  until row > rows
    (1..row).each do
      print n.to_s.length == 1 ? " #{n} " : "#{n} "
      n += 1
    end
    row += 1; puts
  end
end

floyds(5)