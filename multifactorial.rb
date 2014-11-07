# http://rosettacode.org/wiki/Multifactorial

def multifactorial(number,degree)
  if number <= 1
   1
  else
    number * multifactorial(number-degree,degree)
  end
end

(1..5).each do |degree|
  (1..10).each do |number|
    puts multifactorial(number,degree)
  end
end
 