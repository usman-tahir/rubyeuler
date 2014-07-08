# http://rosettacode.org/wiki/Loops/Downward_for
start_time = Time.now

10.downto(0).each do |number|
  puts number.to_s
end

puts ((Time.now-start_time).to_f).to_s + "s"	
