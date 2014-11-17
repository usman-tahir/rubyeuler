# http://rosettacode.org/wiki/Mutual_recursion

def f(n)
  case
  when n == 0
    1
  else
    n - m(f(n-1))
  end  
end

def m(n)
  case
  when n == 0
    0
  else 
    n - f(m(n-1))
  end
end

(0..12).each do |number|
  puts "#{f(number)} : #{m(number)}"
end  
