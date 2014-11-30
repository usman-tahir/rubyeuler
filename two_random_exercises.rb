# http://programmingpraxis.com/2012/08/17/two-random-exercises/

def rand3
  rand(1..3)
end

def rand5
  rand(1..5)
end

def rand9
  rand3 + (3 * (rand3 - 1))
end

def rand7
  x = ((rand5 - 1) * 5) + (rand5) - 1
  if x < 21
    (x % 7) + 1
  else  
    rand7
  end  
end  
  
puts "rand9 :: rand7"
10.times do
  puts "#{rand9} :: #{rand7}"
end  
