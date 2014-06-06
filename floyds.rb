# http://rosettacode.org/wiki/Floyd%27s_triangle
start_time = Time.now

row = 1
number = 1
until row > 14 # or 5, per the task
  (1..row).each do
    print " " + number.to_s + " " if number.to_s.length == 1 
    print number.to_s + " " if number.to_s.length > 1
    number += 1
  end
  puts " "
  row += 1
end		

puts ((Time.now - start_time).to_f).to_s + "s"