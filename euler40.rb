# http://projecteuler.net/problem=40
starttime = Time.now
numberstring = String.new
digitpositions = [0,9,99,999,9999,99999,999999]
digits =[]

def stringint(string, num)
  return string[num].to_i
end  

(1..1_000_000).each do |number|
  numberstring.concat(number.to_s)
end

digitpositions.each do |num|
  digits.push stringint(numberstring, num)
end

puts digits.inject(:*)
puts ((Time.now - starttime).to_f).to_s + "s"