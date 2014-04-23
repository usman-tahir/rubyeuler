require 'prime'
runtime = Time.now

Prime.each(9999) do |num|
  x = num
  y = (num + 3330)
  z = (num + 6660)
  if x.prime? == true && y.prime? == true && z.prime? == true && z < 10000 && x.to_s.scan(/./).map {|e| e.to_i}.sort == y.to_s.scan(/./).map {|e| e.to_i}.sort
    puts num.to_s + " " + (num + 3330).to_s + " " + (num + 6660).to_s
  else
  end	
end	

puts ((Time.now - runtime).to_f).to_s + " s"