# http://rosettacode.org/wiki/Loops/Continue
start_time = Time.now

(1..10).each do |number|
  print number.to_s + ", " if number % 5 != 0 && number % 10 != 0
  puts number.to_s + " " if number % 5 == 0
end  

puts ((Time.now-start_time).to_f).to_s + "s"
