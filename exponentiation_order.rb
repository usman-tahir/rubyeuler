# http://rosettacode.org/wiki/Exponentiation_order
start_time = Time.now

puts "5**3**2 = " + (5**3**2).to_s
puts "(5**3)**2 = " + ((5**3)**2).to_s
puts "5**(3**2) = " + (5**(3**2)).to_s
puts ((Time.now-start_time).to_f).to_s + "s"

