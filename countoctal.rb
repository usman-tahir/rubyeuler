# http://rosettacode.org/wiki/Count_in_octal
start_time = Time.now

def convert_to_octal(number)
  number.to_s(8)
end

def count_in_octal(start,finish)
  (start..finish).each do |number|
    puts "decimal integer: " + number.to_s + " // octal number: " + convert_to_octal(number).to_s
  end	
end	

count_in_octal(200,250)
puts ((Time.now-start_time).to_f).to_s + "s"		