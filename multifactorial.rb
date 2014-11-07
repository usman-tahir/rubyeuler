# http://rosettacode.org/wiki/Multifactorial

def multifactorial(number,degree)
  if number <= 1
   1
  else
    number * multifactorial(number-degree,degree)
  end
end

# degree 1
(1..10).each do |number|
  puts multifactorial(number,1)
end

# degree 2
(1..10).each do |number|
  puts multifactorial(number,2)
end       

# degree 3
(1..10).each do |number|
  puts multifactorial(number,3)
end

# degree 4
(1..10).each do |number|
  puts multifactorial(number,4)
end    

# degree 5
(1..10).each do |number|
  puts multifactorial(number,5)
end  